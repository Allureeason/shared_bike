#ifndef __BUSY_DISPATCH_MESSAGE_SERVICE_H__
#define __BUSY_DISPATCH_MESSAGE_SERVICE_H__

#include <vector>
#include <map>

#include "iEvent.h"
#include "iEventHandler.h"
#include "threadpool/thread.h"
#include "threadpool/thread_pool.h"

class DispatchMsgService {
public:
    DispatchMsgService();
    ~DispatchMsgService();

    bool open();
    bool close();

    void subscribe(uint32_t eid, iEventHandler* handler);
    void unsubscribe(uint32_t eid, iEventHandler* handler);

    int32_t enqueue(iEvent* ev);
    void process(iEvent* ev);

    static void svc(void *args);

    static DispatchMsgService* getInstance();

private:
    static DispatchMsgService* s_dispatchMsgService;
    std::map<uint32_t, std::vector<iEventHandler*> > m_ev2handlers;
    thread_pool_t* m_threadPool;
};

#endif
