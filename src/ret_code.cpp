#include "ret_code.h"
#include <string>
#include <map>


static std::map<uint32_t, std::string> Code2Str = {
    {RetCode::OK, "OK"},
    {RetCode::FAILURE, "FAILURE"},
};

std::string GetReturnCodeDesc(uint32_t code) {
    auto it = Code2Str.find(code);
    return it == Code2Str.end() ? "UNKNOW" : it->second;
}

