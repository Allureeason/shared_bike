#include<stdio.h>                                                               
#include<stdlib.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

#include "../src/proto/bike.pb.h"

int main(int argc, const char *argv[])
{
        char buf[128];//用来储存发送数据的数组
        int sfd;//定义套接字
        int ret;
        ssize_t send_bytes;
        struct sockaddr_in src;//地址结构体；
        socklen_t len=sizeof(src);
        sfd=socket(AF_INET,SOCK_STREAM,0);//创建套接字
        if(sfd<0)
        {
            perror("socket");
            return -1;
        }
        src.sin_family=AF_INET;//ip为IPv4地址
        src.sin_port=htons(8888);//目标服务器端口号(从终端传入的是字符串，我们先用atio函数将字符串转换从整型，然后用htons函数将整型转换成网络字节序）
        src.sin_addr.s_addr=inet_addr("127.0.0.1"); //目标ip（用inet_addr函数将ip字符串转化成网络字节序）                                    
        ret=connect(sfd,(const struct sockaddr *)&src,len);//连接目标服务器
        if(ret<0)
        {
            perror("connect");
            return -1;
        }
        printf("连接成功\n");
        while(1)
        {
            char msg[1024];
            // 协议头
            bike::mobile_code_request mcr;
            mcr.set_mobile("15207747257");
            int msg_len = mcr.ByteSize();
            strncpy(msg, "BUSY", 4);
            *(short*)(msg + 4) = 1;
            *(int*)(msg + 6) = msg_len;

            mcr.SerializeToArray(msg + 10, msg_len);

            int len = write(sfd, msg, msg_len + 10);
            sleep(1);
        }
        return 0;
}
