#ifndef __BUSY_NETWORK_INTERFACE_H__
#define __BUSY_NETWORK_INTERFACE_H__

#include <event2/event.h>
#include <event2/bufferevent.h>
#include <event2/listener.h>

#include "iEvent.h"

#define MESSAGE_HEADER_LEN 10
#define SERVER_FLAG "BUSY"
#define MAX_MESSAGE_LEN (1024 * 1024 * 100)

enum class SessionStatus {
    SS_CLOSE,
    SS_REQUEST,
    SS_RESPONSE,
};

enum class MessageStatus {
    MS_READ_HEADER = 0,
    MS_READ_MESSAGE = 1,
    MS_READ_DONE = 2,
    MS_SENDING = 3
};

typedef struct _ConnectSession {
    char remote_ip[32];
    char* read_buf;
    char header[MESSAGE_HEADER_LEN + 1];
    char* write_buf;
    SessionStatus session_stat;
    iEvent* request;
    MessageStatus req_stat;
    iEvent* response;
    MessageStatus resp_stat;
    uint32_t eid;
    int32_t fd;
    struct bufferevent* bev;
    uint32_t message_len;
    uint32_t read_len;
    uint32_t send_len;
    uint32_t read_header_len;
}ConnectSession;

class NetworkInterface {
public:
    NetworkInterface();
    ~NetworkInterface();
    
    bool start(uint16_t port);
    void close();

    static void listener_cb(struct evconnlistener* listener, evutil_socket_t fd,
                            struct sockaddr* addr, int socklen, void* arg);
    static void handle_request(struct bufferevent* bev, void* arg);
    static void handle_response(struct bufferevent* bev, void* arg);
    static void handle_error(struct bufferevent* bev, short event, void *arg);

    void networkEventDispatch();
    void sendResponseMessage(ConnectSession* cs);

private:
    struct event_base* m_evBase;
    struct evconnlistener* m_listener;
};

#endif
