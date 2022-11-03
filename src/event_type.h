#ifndef __BUSY_EVENT_TYPE_H__
#define __BUSY_EVENT_TYPE_H__

enum EventType {
    EVT_UNKNOW                      = 0, // 未知事件

    EVT_MOBIKE_CODE_REQUEST         = 0x00000001, // 手机验证码获取请求
    EVT_MOBIKE_CODE_RESPONSE        = 0x00000002, // 手机验证码获取响应

};

#endif
