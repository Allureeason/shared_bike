#include <iostream>
#include "iEvent.h"
#include "proto/bike.pb.h"
#include "events.h"

int main(int argc, char** argv) {

    MobileCodeReqEv *mce = new MobileCodeReqEv("15207747257");
    mce->dump(std::cout);

    MobileCodeRespEv *mresp = new MobileCodeRespEv(132, 4789783);
    mresp->dump(std::cout);
    
    return 0;
}

