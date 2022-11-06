#include <iostream>
#include <unistd.h>
#include <stdlib.h>
#include "iEvent.h"
#include "proto/bike.pb.h"
#include "events.h"
#include "user_event_handler.h"
#include "DispatchMsgService.h"
#include "NetworkInterface.h"

int main(int argc, char** argv) {

    UserEventHandler uehl; 
    printf("Server start");
    DispatchMsgService *DMS = DispatchMsgService::getInstance();
    DMS->open();
    
    NetworkInterface *Net = new NetworkInterface();
    Net->start(8888);

    int n = 1000;
    while(n--) {
        Net->networkEventDispatch();
        sleep(1);
        printf("NetworkInterface dispatch...\n");
    }

    DMS->close();
    Net->close();

    delete DMS;
    delete Net;

    return 0;
}

