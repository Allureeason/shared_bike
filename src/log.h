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
    Logger::getInstance()->logDebug(Logger::format(fmt, ##__VA_ARGS__))

#define LOG_INFO(fmt, ...) \
    Logger::getInstance()->logInfo(Logger::format(fmt, ##__VA_ARGS__))

#define LOG_ERROR(fmt, ...) \
    Logger::getInstance()->logError(Logger::format(fmt, ##__VA_ARGS__))

#define LOG_WARN(fmt, ...) \
    Logger::getInstance()->logWarn(Logger::format(fmt, ##__VA_ARGS__))

#define RollingFileName "./log/share_bike.log"

class Logger{
public:
    static Logger * getInstance(){            //单例模式
        if(_instance==NULL)
            _instance = new Logger();
        return _instance;
    }
    ~Logger();

    static std::string format(const char* fmt, ...);
    static std::string format(const char* fmt, va_list al);
    void logInfo (const std::string  Message);
    void logError(const std::string  Message);
    void logWarn (const std::string  Message);
    void logDebug(const std::string  Message);
private:

    log4cpp::Category & _root;                   //引用避免了再次复制root对象
private:
    static Logger * _instance;
    Logger();
};


#endif
