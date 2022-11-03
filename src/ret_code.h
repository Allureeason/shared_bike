#ifndef __BUSY_RETURN_CODE_H__
#define __BUSY_RETURN_CODE_H__

#include <string>
#include <map>

enum RetCode {
    OK = 200,
    FAILURE = -1,
    
    // 按需添加错误码
};

static std::map<uint32_t, std::string> Code2Str = {
    {OK, "OK"},
    {FAILURE, "FAILURE"},
};

std::string GetReturnCodeDesc(uint32_t code) {
    auto it = Code2Str.find(code);
    return it == Code2Str.end() ? "UNKNOW" : it->second;
}

#endif
