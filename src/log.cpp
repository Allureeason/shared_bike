#include "log.h"

 
Logger * Logger::_instance = NULL;          //静态成员类外初始化
 
Logger::Logger()
:_root(log4cpp::Category::getRoot()) {
    log4cpp::PatternLayout * _ptnLyout = new log4cpp::PatternLayout();
    _ptnLyout->setConversionPattern("%d{%Y/%m/%d %H:%M:%S} [%5p] :%m%n");             //PatternLayout定义布局格式 
    log4cpp::RollingFileAppender * _rollingFileAppender = new log4cpp::RollingFileAppender("rollingFileAppender", RollingFileName, 5 * 1024, 2) ; //设置回卷格式fileappender
    _rollingFileAppender->setLayout(_ptnLyout);
 
    _root.addAppender(_rollingFileAppender);   //可以多次add不同类型的appender 实现向不同流输出
    _root.setPriority(log4cpp::Priority::DEBUG);
}
    
Logger::~Logger(){
    //delete _ptnLyout;
    //delete _rollingFileAppender;
    log4cpp::Category::shutdown();
}
 
void Logger::logInfo (const std::string  Message){
    _root.info(Message);     
}       
void Logger::logError (const std::string  Message){
    _root.error(Message);      
}
void Logger::logWarn (const std::string  Message){
    _root.warn(Message);      
}
void Logger::logDebug (const std::string  Message){ 
    _root.debug(Message);     
}

std::string Logger::format(const char* fmt, ...) {
    va_list al;
    va_start(al, fmt);
    std::string str=format(fmt, al);
    va_end(al);
    return str;
}

std::string Logger::format(const char* fmt, va_list al) {
    char* buf = nullptr;
    int len = vasprintf(&buf, fmt, al);
    std::stringstream m_ss;
    if(len != -1) {
        m_ss << std::string(buf, len);
        free(buf);
    }
    return m_ss.str();
}
