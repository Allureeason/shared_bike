#include "DispatchMsgService.h"
#include "log.h"
#include <algorithm>

DispatchMsgService* DispatchMsgService::s_dispatchMsgService = nullptr;

DispatchMsgService::DispatchMsgService() {
    m_threadPool = nullptr;
}

DispatchMsgService::~DispatchMsgService() {
}


bool DispatchMsgService::open() {
    m_threadPool = thread_pool_init();
    return m_threadPool ? true : false;
}

bool DispatchMsgService::close() {
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

void DispatchMsgService::process(iEvent* ev) {
    if(ev == nullptr) {
        return;
    }

    uint32_t eid = ev->getId();
    LOG_DEBUG("DispatchMsgService::process. ev=[eid=%d, sn=%d]\n", eid, ev->getSn());
    std::vector<iEvent*> resps;
    auto it = m_ev2handlers.find(eid);
    if(it == m_ev2handlers.end()) {
        LOG_WARN("DispatchMsgService::process. not found handler to due ev[eid=%d, sn=%d]\n", eid, ev->getSn());
        return;
    }
    auto handlers = it->second;
    for(auto handler : handlers) {
        LOG_DEBUG("DispatchMsgService::process. handler name=%s\n", handler->getName().c_str());
        iEvent* resp = handler->handle(ev);
        resps.push_back(resp);
    }
}

void DispatchMsgService::svc(void *args) {
    LOG_DEBUG("DispatchMsgService::svc.\n");
    DispatchMsgService* dispatch = getInstance();
    iEvent* ev = (iEvent*)args;
    if(ev != nullptr) {
        dispatch->process(ev);
        delete ev;
    }
}

DispatchMsgService* DispatchMsgService::getInstance() {
    if(s_dispatchMsgService == nullptr) {
        s_dispatchMsgService = new DispatchMsgService();
    }
    return s_dispatchMsgService;
}

