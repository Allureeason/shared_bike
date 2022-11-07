#include "DispatchMsgService.h"
#include "log.h"
#include "proto/bike.pb.h"
#include "events.h"
#include "event_type.h"
#include <algorithm>

DispatchMsgService* DispatchMsgService::s_dispatchMsgService = nullptr;
pthread_mutex_t DispatchMsgService::m_mutex;
std::queue<iEvent*> DispatchMsgService::m_respEvent;
bool DispatchMsgService::m_close = false;

DispatchMsgService::DispatchMsgService() {
    m_threadPool = nullptr;
}

DispatchMsgService::~DispatchMsgService() {
}

bool DispatchMsgService::open() {
    m_close = false;
    
    thread_mutex_create(&m_mutex);
    m_threadPool = thread_pool_init();
    return m_threadPool ? true : false;
}

bool DispatchMsgService::close() {
    m_close = true;

    thread_mutex_destroy(&m_mutex);
    thread_pool_destroy(m_threadPool);
    return true;
}

void DispatchMsgService::subscribe(uint32_t eid, iEventHandler* handler) {
    auto iter = m_ev2handlers.find(eid);
    if(iter != m_ev2handlers.end()) {
        auto it = std::find(iter->second.begin(), iter->second.end(), handler);
        if(it == iter->second.end()) {
            iter->second.push_back(handler);
        }
    } else {
        m_ev2handlers[eid].push_back(handler);
    }
}

void DispatchMsgService::unsubscribe(uint32_t eid, iEventHandler* handler) {
    auto iter = m_ev2handlers.find(eid);
    if(iter != m_ev2handlers.end()) {
        auto it = std::find(iter->second.begin(), iter->second.end(), handler);
        if(it != iter->second.end()) {
            iter->second.erase(it);
        }
    }
    
}

int32_t DispatchMsgService::enqueue(iEvent* ev) {
    // 把事件打包成任务放到线程池中
    thread_task_t* task = thread_task_alloc(sizeof(thread_task_t));
    task->handler = DispatchMsgService::svc;
    task->ctx = ev;
    
    return thread_task_post(m_threadPool, task);
}

std::list<iEvent*> DispatchMsgService::process(iEvent* ev) {
    std::list<iEvent*> resps;
    if(ev == nullptr) {
        return resps;
    }

    uint32_t eid = ev->getId();
    LOG_DEBUG("DispatchMsgService::process. ev=[eid=%d, sn=%d]\n", eid, ev->getSn());
    auto it = m_ev2handlers.find(eid);
    if(it == m_ev2handlers.end()) {
        LOG_WARN("DispatchMsgService::process. not found handler to due ev[eid=%d, sn=%d]\n", eid, ev->getSn());
        return resps;
    }
    auto handlers = it->second;
    for(auto handler : handlers) {
        LOG_DEBUG("DispatchMsgService::process. handler name=%s\n", handler->getName().c_str());
        iEvent* resp = handler->handle(ev);
        resps.push_back(resp);
    }
    return resps;
}

void DispatchMsgService::svc(void *args) {
    if(!m_close) {
        LOG_DEBUG("DispatchMsgService::svc.\n");
        DispatchMsgService* dispatch = getInstance();
        iEvent* ev = (iEvent*)args;
        if(!ev) {
            return;
        }
        std::list<iEvent*> resps = dispatch->process(ev);
        if(resps.empty()) {
            iEvent *resp = new DoExitEv();
            resp->setArg(ev->getArg());
            resps.push_back(resp);
        }
        thread_mutex_lock(&m_mutex);
        for(auto &resp : resps) {
            resp->setArg(ev->getArg());
            m_respEvent.push(resp);
            resp->dump(std::cout);
        }
        thread_mutex_unlock(&m_mutex);

        delete ev;
    }
}

void DispatchMsgService::workSendResponses(NetworkInterface* interface) {
    bool done = false;
    while(!done) {
        iEvent* ev = nullptr;
        thread_mutex_lock(&m_mutex);
        if(!m_respEvent.empty()) {
            ev = m_respEvent.front();
            m_respEvent.pop();
        } else {
            done = true;
        }
        thread_mutex_unlock(&m_mutex);

        if(ev) {
            if(ev->getId() == EventType::EVT_MOBILE_CODE_RESPONSE) {
                LOG_DEBUG("file=%s,line=%d,MobileCodeRespEv.\n", __FILE__, __LINE__);
                MobileCodeRespEv* resp = (MobileCodeRespEv*)ev;
                ConnectSession* cs = (ConnectSession*)ev->getArg();
                cs->message_len = resp->getProto().ByteSize();
                cs->write_buf = new char[MAX_MESSAGE_LEN + cs->message_len];
                
                // 组装头部
                strncpy(cs->write_buf, SERVER_FLAG, 4);
                *(uint16_t*)(cs->write_buf + 4) = EventType::EVT_MOBILE_CODE_RESPONSE;
                *(uint32_t*)(cs->write_buf + 6) = cs->message_len;

                resp->getProto().SerializeToArray(cs->write_buf + MAX_MESSAGE_LEN, cs->message_len);
                cs->response = resp;
                interface->sendResponseMessage(cs);
            }
        }
    }
}

DispatchMsgService* DispatchMsgService::getInstance() {
    if(s_dispatchMsgService == nullptr) {
        s_dispatchMsgService = new DispatchMsgService();
    }
    return s_dispatchMsgService;
}

