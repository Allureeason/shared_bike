#ifndef __BUSY_RETURN_CODE_H__
#define __BUSY_RETURN_CODE_H__

#include <string>

enum RetCode {
    OK = 200,
    FAILURE = -1,
    
    // 按需添加错误码
};

std::string GetReturnCodeDesc(uint32_t code);

#endif
