#include "user_event_handler.h"
#include "DispatchMsgService.h"
#include "log.h"

UserEventHandler::UserEventHandler()
    :iEventHandler("UserEventHandler") {
    DispatchMsgService::getInstance()->subscribe(EventType::EVT_MOBIKE_CODE_REQUEST, this);
    thread_mutex_create(&m_mutex);
}

UserEventHandler::~UserEventHandler() {
    DispatchMsgService::getInstance()->unsubscribe(EventType::EVT_MOBIKE_CODE_REQUEST, this);
    thread_mutex_destroy(&m_mutex);
}

iEvent* UserEventHandler::handle(iEvent* ev) {
    uint32_t eid = ev->getId();
    if(eid == EventType::EVT_MOBIKE_CODE_REQUEST) {
        return handleMobileCodeReq((MobileCodeReqEv*)ev);
    }
    return nullptr;
}

MobileCodeRespEv* UserEventHandler::handleMobileCodeReq(MobileCodeReqEv* req) {
    std::string mobile = req->getMobile();
    uint32_t icode = genCode();
    thread_mutex_lock(&m_mutex);
    m_mobile2code[mobile] = icode;
    thread_mutex_unlock(&m_mutex);
    LOG_DEBUG("UserEventHandler::handleMobileCodeReq. mobile=%s,gen icode=%d\n", mobile.c_str(), icode);
    return new MobileCodeRespEv(RetCode::OK, icode);
}

uint32_t UserEventHandler::genCode() {
    srand((unsigned)time(0));
    uint32_t icode = rand() % (999999 - 100000) + 100000;
    return icode;
}
