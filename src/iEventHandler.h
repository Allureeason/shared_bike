#ifndef __BUSY_IEVENT_HANDLER_H__
#define __BUSY_IEVENT_HANDLER_H__

#include "iEvent.h"

class iEventHandler {
public:
    iEventHandler() {}
    virtual ~iEventHandler() {}
    virtual iEvent* handle(iEvent* ev) = 0;
};

#endif
