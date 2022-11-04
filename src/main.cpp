#include <iostream>
#include <unistd.h>
#include <stdlib.h>
#include "iEvent.h"
#include "proto/bike.pb.h"
#include "events.h"
#include "user_event_handler.h"
#include "DispatchMsgService.h"

int main(int argc, char** argv) {

    UserEventHandler uehl; 
    DispatchMsgService *DMS = DispatchMsgService::getInstance();
    DMS->open();
    iEvent *mce = new MobileCodeReqEv("15207747257");
    DMS->enqueue(mce);

    sleep(3);
    DMS->close();
    
    return 0;
}

