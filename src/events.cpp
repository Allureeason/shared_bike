#include "events.h"

std::ostream& MobileCodeReqEv::dump(std::ostream& out) {
    out << "MobileCodeReqEv sn=" << getSn()
        << " mobile=" << m_mrc.mobile() << std::endl;
    return out;
}


std::ostream& MobileCodeRespEv::dump(std::ostream& out) {
    out << "MobileCodeRespEv sn=" << getSn()
        << " code=" << m_resp.code() << " icode=" << m_resp.icode()
        << " desc=" << m_resp.desc() << std::endl;
    return out;
}
