#include <iostream>
#include "iEvent.h"
#include "proto/bike.pb.h"

int main(int argc, char** argv) {

    bike::mobile_code_request mcr("15207747257");
    std::cout << mcr.mobile() << std::endl;

    iEvent *ie = new iEvent(111, 2);
    std::cout << ie->getId() << std::endl;
    
    return 0;
}

