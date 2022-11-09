/******************************************************
* Author       : Busy
* Email        : 1324789783@qq.com
* CreateTiem   :2022-11-0616:07
* FileName     :NetworkInterface.cpp
* Description: 网络接口类，负责网络相关，客户端连接，数据包接收和发送
******************************************************/

#include "NetworkInterface.h"
#include "log.h"
#include "DispatchMsgService.h"
#include "event_util.h"
#include <event2/buffer.h>

#include <string.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <stdint.h>

static ConnectSession* session_init(int fd, struct bufferevent* bev) {
    ConnectSession* cs = new ConnectSession;
    memset(cs, 0, sizeof(ConnectSession));

    cs->fd = fd;
    cs->bev = bev;
    return cs;
}

static void session_close(ConnectSession* cs) {
    if(cs == nullptr) {
        return;
    }

    if(cs->read_buf) {
        delete[] cs->read_buf;
        cs->read_buf = nullptr;
    }

    if(cs->write_buf) {
        delete[] cs->write_buf;
        cs->write_buf = nullptr;
    }

    delete cs;
}

static void session_reset(ConnectSession* cs) {
    if(cs == nullptr) {
        return;
    }

    if(cs->read_buf) {
        delete[] cs->read_buf;
        cs->read_buf = nullptr;
    }

    if(cs->write_buf) {
        delete[] cs->write_buf;
        cs->write_buf = nullptr;
    }

    if(cs->request) {
        delete cs->request;
        cs->request = nullptr;
    }

    if(cs->response) {
        delete cs->response;
        cs->response = nullptr;
    }

    cs->session_stat = SessionStatus::SS_REQUEST;
    cs->req_stat = MessageStatus::MS_READ_HEADER;
    cs->message_len = 0;
    cs->read_len = 0;
    cs->send_len = 0;
    cs->read_header_len = 0;
}

NetworkInterface::NetworkInterface() {
    m_evBase = nullptr;
    m_listener = nullptr;
}

NetworkInterface::~NetworkInterface() {
    close();
}

bool NetworkInterface::start(uint16_t port) {
    struct sockaddr_in addr;
    memset(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_port = htons(port);

    m_evBase = event_base_new();
    m_listener = evconnlistener_new_bind(m_evBase, NetworkInterface::listener_cb, m_evBase,
                                         LEV_OPT_REUSEABLE | LEV_OPT_CLOSE_ON_FREE, 512,
                                         (struct sockaddr*)&addr, sizeof(addr));
    return true;
}

void NetworkInterface::close() {
    if(m_listener) {
        evconnlistener_free(m_listener);
        m_listener = nullptr;
    }

    if(m_evBase) {
        event_base_free(m_evBase);
        m_evBase = nullptr;
    }
}

void NetworkInterface::listener_cb(struct evconnlistener* listener, evutil_socket_t fd,
                        struct sockaddr* addr, int socklen, void* arg) {
    //LOG_DEBUG("accept client fd=%d,", fd); 
    struct event_base* base = (struct event_base*)arg;
    struct bufferevent* bev = bufferevent_socket_new(base, fd, BEV_OPT_CLOSE_ON_FREE);

    ConnectSession* cs = session_init(fd, bev);
    cs->session_stat = SessionStatus::SS_REQUEST;
    cs->req_stat = MessageStatus::MS_READ_HEADER;

    strcpy(cs->remote_ip, inet_ntoa(((struct sockaddr_in*)addr)->sin_addr));
    //LOG_DEBUG("remote ip=%s\n", cs->remote_ip);
    bufferevent_setcb(bev, handle_request, handle_response, handle_error, cs);
    bufferevent_enable(bev, EV_READ | EV_PERSIST);
}

void NetworkInterface::handle_request(struct bufferevent* bev, void* arg) {
    ConnectSession* cs = (ConnectSession*)arg;

    if(cs->session_stat != SessionStatus::SS_REQUEST) {
        LOG_WARN("NetworkInterface::handle_request. SessionStatus=%d\n", (int)cs->session_stat);
        return;
    }

    if(cs->req_stat == MessageStatus::MS_READ_HEADER) { // 读取请求头信息
        int len = bufferevent_read(bev, cs->header + cs->read_header_len, MESSAGE_HEADER_LEN - cs->read_header_len);
        cs->read_header_len += len;
        cs->header[cs->read_header_len] = '\0';

        // 读取完头部信息，更新请求的读取状态, 解析请求头
        if(cs->read_header_len == MESSAGE_HEADER_LEN) {            
            if(strncmp(cs->header, SERVER_FLAG, 4)) {
                // 服务器标志对不上，禁止继续请求
                LOG_WARN("NetworkInterface::handle_request. header flag error, header=%s\n", cs->header);
                bufferevent_free(bev);
                session_close(cs);
                return;
            }
            cs->eid = *(uint16_t*)(cs->header + 4);
            cs->message_len = *(uint32_t*)(cs->header + 6);
            //LOG_DEBUG("NetworkInterface::handle_request. recv header=%s,eid=%d,msg_len=%d\n", cs->header, cs->eid, cs->message_len);
            if(cs->message_len < 1 || cs->message_len > MAX_MESSAGE_LEN) {
                LOG_ERROR("NetworkInterface::handle_request. message too long.\n");
                bufferevent_free(bev);
                session_close(cs);
                return;
            }
            cs->req_stat = MessageStatus::MS_READ_MESSAGE;
            cs->read_header_len = 0;
            cs->read_buf = new char[cs->message_len];
            cs->read_len = 0;
        }
    }
    if(cs->req_stat == MessageStatus::MS_READ_MESSAGE && evbuffer_get_length(bufferevent_get_input(bev)) > 0) {
        int len = bufferevent_read(bev, cs->read_buf + cs->read_len, cs->message_len - cs->read_len);
        cs->read_len += len;
        // 读取完数据包
        if(cs->read_len == cs->message_len) {
            cs->req_stat = MessageStatus::MS_READ_DONE;
            cs->session_stat = SessionStatus::SS_RESPONSE;
            iEvent* ev = ParseEvent(cs->eid, cs->read_buf, cs->message_len);

            delete[] cs->read_buf;
            cs->read_buf = nullptr;
            cs->message_len = 0;
            
            if(ev) {
                ev->setArg(cs);
                DispatchMsgService::getInstance()->enqueue(ev);
            } else {
                LOG_ERROR("NetworkInterface::handle_request. parse event error, read buf=%s,eid=%d,message len=%d.\n", cs->read_buf, cs->eid, cs->message_len);
                bufferevent_free(bev);
                session_close(cs);
                return;
            }
        }
    }
}

void NetworkInterface::handle_response(struct bufferevent* bev, void* arg) {
    //LOG_DEBUG("NetworkInterface::handle_response. Do response to client.\n");
}

void NetworkInterface::handle_error(struct bufferevent* bev, short event, void* arg) {
    ConnectSession* cs = (ConnectSession*)arg;

    //LOG_DEBUG("NetworkInterface::handle_error.");
    if(event & BEV_EVENT_EOF) {
        //LOG_DEBUG("Client close.\n");
    } else {
        LOG_WARN("warn...\n");
    }

    bufferevent_free(bev);
    session_close(cs);
}

void NetworkInterface::networkEventDispatch() {
    event_base_loop(m_evBase, EVLOOP_ONCE | EVLOOP_NONBLOCK);
}

void NetworkInterface::sendResponseMessage(ConnectSession* cs) {
    if(!cs) {
        return;
    }

    if(!cs->response || cs->eid == EventType::EVT_DO_EXIT) {
        bufferevent_free(cs->bev);
        if(cs->request) {
            delete cs->request;
        }
        session_close(cs);
        return;
    }
    bufferevent_write(cs->bev, cs->write_buf, MESSAGE_HEADER_LEN + cs->message_len);
    session_reset(cs);
}
