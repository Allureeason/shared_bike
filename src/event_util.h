/******************************************************
* Author       : Busy
* Email        : 1324789783@qq.com
* CreateTiem   :2022-11-06 21:25
* FileName     :event_util.h
* Description:
******************************************************/

#ifndef __BUSY_EVENT_UTIL_H__
#define __BUSY_EVENT_UTIL_H__

#include "iEvent.h"
#include "event_type.h"
#include "events.h"
#include "proto/bike.pb.h"


iEvent* parseEvent(uint32_t eid, const char* msg, uint32_t len) {
    if(!msg || len < 0) {
        return nullptr;
    }

    if(eid == EventType::EVT_MOBIKE_CODE_REQUEST) {
        bike::mobile_code_request mcr;
        if(mcr.ParseFromArray(msg, len)) {
            return new MobileCodeReqEv(mcr.mobile());
        }
    } else {
        return nullptr;
    }
    return nullptr;
}

#endif
