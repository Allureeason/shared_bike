#ifndef __BUSY_IEVENT_HANDLER_H__
#define __BUSY_IEVENT_HANDLER_H__

#include "iEvent.h"
#include <string>

class iEventHandler {
public:
    iEventHandler(const std::string& name) { m_name = name;}
    virtual ~iEventHandler() {}
    virtual iEvent* handle(iEvent* ev) = 0;
    std::string getName() const { return m_name;}
private:
    std::string m_name;
};

#endif
