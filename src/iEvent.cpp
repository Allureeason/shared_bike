#include "iEvent.h"

iEvent::iEvent(uint32_t eid, uint32_t sn)
    :m_eid(eid)
     ,m_sn(sn) {
}

iEvent::~iEvent() {
}

uint32_t iEvent::generateSeqNo() {
    static uint32_t seqNo = 0;
    return ++seqNo;
}
