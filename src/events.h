#ifndef __BUSY_EVENTS_H__
#define __BUSY_EVENTS_H__

class MobileCodeReqEv : public iEvent {
public:
    MobileCodeReqEv(const std::string& mobile);
    ~MobileCodeReqEv();

private:
};

#endif
