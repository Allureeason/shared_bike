#ifndef __BUSY_USER_EVENT_HANDLER_H__
#define __BUSY_USER_EVENT_HANDLER_H__

#include "events.h"
#include "iEventHandler.h"
#include "threadpool/thread.h"
#include <map>

class UserEventHandler : public iEventHandler {
public:
    UserEventHandler();
    ~UserEventHandler();

    virtual iEvent* handle(iEvent* ev) override;

private:
    MobileCodeRespEv* handleMobileCodeReq(MobileCodeReqEv* req);
    uint32_t genCode();

private:
    std::map<std::string, uint32_t> m_mobile2code;
    pthread_mutex_t m_mutex;
};

#endif
