#ifndef __BUSY_IEVENT_H__
#define __BUSY_IEVENT_H__

#include <ostream>
#include <stdint.h>

class iEvent {
public:
    iEvent(uint32_t eid, uint32_t sn);
    virtual ~iEvent();

    virtual std::ostream& dump(std::ostream& out) { return out; }
    uint32_t getId() const { return m_eid; }
    uint32_t getSn() const { return m_sn; }
    
    uint32_t generateSeqNo() const;

    void* getArg() const { return m_arg; }
    void setArg(void* arg) { m_arg = arg; }

private:
    uint32_t m_eid;
    uint32_t m_sn;
    void* m_arg;
};

#endif
