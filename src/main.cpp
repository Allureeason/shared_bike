#include <iostream>
#include "iEvent.h"
#include "proto/bike.pb.h"
#include "events.h"
#include "user_event_handler.h"

int main(int argc, char** argv) {

    iEvent *mce = new MobileCodeReqEv("15207747257");
    mce->dump(std::cout);

    UserEventHandler ueh;

    MobileCodeRespEv* resp = (MobileCodeRespEv*)ueh.handle(mce);
    resp->dump(std::cout);
    
    
    return 0;
}

