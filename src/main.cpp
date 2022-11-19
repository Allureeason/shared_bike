#include <iostream>
#include <unistd.h>
#include <stdlib.h>
#include "iEvent.h"
#include "proto/bike.pb.h"
#include "events.h"
#include "user_event_handler.h"
#include "DispatchMsgService.h"
#include "NetworkInterface.h"
#include "log.h"

int main(int argc, char** argv) {

    UserEventHandler uehl;
    LOG_INFO("============%s Server start=============\n", "SharedBike");
    DispatchMsgService *DMS = DispatchMsgService::getInstance();
    DMS->open();


    NetworkInterface *Net = new NetworkInterface();
    Net->start(2022);

    int n = 1000000;
    while(n--) {
        Net->networkEventDispatch();
        usleep(100);
        DMS->workSendResponses(Net);

    }

    DMS->close();
    Net->close();

    return 0;
}

