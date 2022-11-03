#ifndef __BUSY_EVENTS_H__
#define __BUSY_EVENTS_H__

#include <string>
#include "proto/bike.pb.h"
#include "iEvent.h"
#include "event_type.h"
#include "ret_code.h"

class MobileCodeReqEv : public iEvent {
public:
    MobileCodeReqEv(const std::string& mobile)
        :iEvent(EventType::EVT_MOBIKE_CODE_REQUEST, iEvent::generateSeqNo()) {
        m_mrc.set_mobile(mobile);        
    }

    const std::string& getMobile() const {
        return m_mrc.mobile();
    }
    virtual std::ostream& dump(std::ostream& out) override;

private:
    bike::mobile_code_request m_mrc;
};

class MobileCodeRespEv : public iEvent {
public:
    MobileCodeRespEv(uint32_t code, uint32_t icode) 
        :iEvent(EventType::EVT_MOBIKE_CODE_RESPONSE, iEvent::generateSeqNo()){
        m_resp.set_code(code);
        m_resp.set_icode(icode);
        m_resp.set_desc(GetReturnCodeDesc(code));
    }

    uint32_t getCode() const { return m_resp.code(); }
    uint32_t getICode() const { return m_resp.icode(); }
    virtual std::ostream& dump(std::ostream& out) override;

private:
    bike::mobile_code_response m_resp;
};

#endif
