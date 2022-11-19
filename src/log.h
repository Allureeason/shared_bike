#ifndef __BUSY_LOG_H__
#define __BUSY_LOG_H__
#include <log4cpp/Category.hh>
#include <log4cpp/OstreamAppender.hh>
#include <log4cpp/BasicLayout.hh>
#include <log4cpp/Priority.hh>
#include <iostream>
#include <memory>
#include <mutex>
#include <log4cpp/Priority.hh>
#include <log4cpp/PatternLayout.hh>
#include <log4cpp/FileAppender.hh>
#include <log4cpp/RollingFileAppender.hh>
#include <iostream>
#include <sstream>
#include <string>
#include <stdarg.h>

#define LOG_DEBUG(fmt, ...) \
    Mylog4cpp *mylog4cpp1=Mylog4cpp::getInstance();\
    mylog4cpp1->logDebug(mylog4cpp1->format(fmt, __VA_ARGS__));

#define LOG_INFO(fmt, ...) \
    Mylog4cpp *mylog4cpp2=Mylog4cpp::getInstance();\
    mylog4cpp2->logInfo(mylog4cpp1->format(fmt, __VA_ARGS__));

#define LOG_ERROR(fmt, ...) \
    Mylog4cpp *mylog4cpp3=Mylog4cpp::getInstance();\
    mylog4cpp3->logError(mylog4cpp1->format(fmt, __VA_ARGS__));

#define LOG_WARN(fmt, ...) \
    Mylog4cpp *mylog4cpp4=Mylog4cpp::getInstance();\
    mylog4cpp4->logWarn(mylog4cpp1->format(fmt, __VA_ARGS__));
     
#define RollingFileName "../log/log4cpp.log"

class Mylog4cpp{
public:
    static Mylog4cpp * getInstance(){            //单例模式
        if(_instance==NULL)
            _instance = new Mylog4cpp();
        return _instance;
    }
    ~Mylog4cpp();

    std::string format(const char* fmt, ...);
    std::string format(const char* fmt, va_list al);
    void logInfo (const std::string  Message);    
    void logError(const std::string  Message);
    void logWarn (const std::string  Message);
    void logDebug(const std::string  Message);
private:
   
    log4cpp::Category & _root;                   //引用避免了再次复制root对象
private:
    static Mylog4cpp * _instance;
    Mylog4cpp();
};


#endif
