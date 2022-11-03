#include "user_event_handler.h"


UserEventHandler::UserEventHandler() {
}

UserEventHandler::~UserEventHandler() {
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
    m_mobile2code[mobile] = icode;
    return new MobileCodeRespEv(RetCode::OK, icode);
}

uint32_t UserEventHandler::genCode() {
    srand((unsigned)time(0));
    uint32_t icode = rand() % (999999 - 100000) + 100000;
    return icode;
}
