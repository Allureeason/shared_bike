#include "log.h"

 
Mylog4cpp * Mylog4cpp::_instance=NULL;          //静态成员类外初始化
 
Mylog4cpp::Mylog4cpp()
:_root(log4cpp::Category::getRoot()){
    log4cpp::PatternLayout * _ptnLyout = new log4cpp::PatternLayout();
    _ptnLyout->setConversionPattern("%d{%Y/%m/%d %H:%M:%S} [%5p] :%m%n");             //PatternLayout定义布局格式 
    log4cpp::RollingFileAppender * _rollingFileAppender = new log4cpp::RollingFileAppender("rollingFileAppender", RollingFileName,5 * 1024,2) ; //设置回卷格式fileappender
    _rollingFileAppender->setLayout(_ptnLyout);
 
    _root.addAppender(_rollingFileAppender);   //可以多次add不同类型的appender 实现向不同流输出
    _root.setPriority(log4cpp::Priority::DEBUG);
}
    
Mylog4cpp::~Mylog4cpp(){
    //delete _ptnLyout;
    //delete _rollingFileAppender;
    log4cpp::Category::shutdown();
}
 
void Mylog4cpp::logInfo (const std::string  Message){
    _root.info(Message);     
}       
void Mylog4cpp::logError (const std::string  Message){
    _root.error(Message);      
}
void Mylog4cpp::logWarn (const std::string  Message){
    _root.warn(Message);      
}
void Mylog4cpp::logDebug (const std::string  Message){ 
    _root.debug(Message);     
}

std::string Mylog4cpp::format(const char* fmt, ...) {
    va_list al;
    va_start(al, fmt);
    std::string str=format(fmt, al);
    va_end(al);
    return str;
}

std::string Mylog4cpp::format(const char* fmt, va_list al) {
    char* buf = nullptr;
    int len = vasprintf(&buf, fmt, al);
    std::stringstream m_ss;
    if(len != -1) {
        m_ss << std::string(buf, len);
        free(buf);
    }
    return m_ss.str();
}