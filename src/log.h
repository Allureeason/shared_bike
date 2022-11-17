#ifndef __BUSY_LOG_H__
#define __BUSY_LOG_H__
#include <log4cpp/Category.hh>
#include <log4cpp/OstreamAppender.hh>
#include <log4cpp/BasicLayout.hh>
#include <log4cpp/Priority.hh>
#include <iostream>
#include <memory>
#include <mutex>

/*
#define LOG_DEBUG 
#define LOG_INFO    
#define LOG_ERROR   
#define LOG_FAILT   
#define LOG_WARN    
*/
#include <log4cpp/Category.hh>
#include <log4cpp/Priority.hh>
#include <log4cpp/PatternLayout.hh>
#include <log4cpp/FileAppender.hh>
#include <log4cpp/RollingFileAppender.hh>
#include <iostream>
#include <sstream>
#include <string>
 
using std::cout;
using std::endl;
using std::ostringstream;
using std::string;
using namespace log4cpp;
#define RollingFileName "log4cpp.log"
 
class Mylog4cpp{
public:
    static Mylog4cpp * getInstance(){            //单例模式
        if(_instance==NULL)
            _instance = new Mylog4cpp();
        return _instance;
    }
    ~Mylog4cpp();

    void logInfo (const string & Message);    
    void logError(const string & Message);
    void logWarn (const string & Message);
    void logDebug(const string & Message);
private:
    Category & _root;                   //引用避免了再次复制root对象
private:
    static Mylog4cpp * _instance;
    Mylog4cpp();
};


#endif
