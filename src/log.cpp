#include "log.h"

 
Mylog4cpp * Mylog4cpp::_instance=NULL;          //静态成员类外初始化
 
Mylog4cpp::Mylog4cpp()
:_root(Category::getRoot())
{
    PatternLayout * _ptnLyout = new PatternLayout();
    _ptnLyout->setConversionPattern("%d{%Y/%m/%d %H:%M:%S} [%5p] :%m%n");             //PatternLayout定义布局格式 
    RollingFileAppender * _rollingFileAppender = new RollingFileAppender("rollingFileAppender", RollingFileName,5 * 1024,2) ; //设置回卷格式fileappender
    _rollingFileAppender->setLayout(_ptnLyout);
 
    _root.addAppender(_rollingFileAppender);   //可以多次add不同类型的appender 实现向不同流输出
    _root.setPriority(Priority::DEBUG);
}
 
Mylog4cpp::~Mylog4cpp(){
    //delete _ptnLyout;
    //delete _rollingFileAppender;
    Category::shutdown();
}
 
void Mylog4cpp::logInfo (const string & Message){
    string Message2=Message;
    Message2 += __FILE__;
    Message2 += ".";
    Message2 += __FUNCTION__;
    Message2 += ".";
    Message2 += std::to_string(__LINE__);
    _root.info(Message2);     
}       
void Mylog4cpp::logError (const string & Message){
    string Message2=Message;
    Message2 += __FILE__;
    Message2 += ".";
    Message2 += __FUNCTION__;
    Message2 += ".";
    Message2 += std::to_string(__LINE__);
    _root.error(Message2);      
}
void Mylog4cpp::logWarn (const string & Message){
    string Message2=Message;
    Message2 += __FILE__;
    Message2 += ".";
    Message2 += __FUNCTION__;
    Message2 += ".";
    Message2 += std::to_string(__LINE__);
    _root.warn(Message2);      
}
void Mylog4cpp::logDebug (const string & Message){
    string Message2=Message;
    Message2 += __FILE__;
    Message2 += ".";
    Message2 += __FUNCTION__;
    Message2 += ".";
    Message2 += std::to_string(__LINE__);   
    _root.debug(Message2);     
}