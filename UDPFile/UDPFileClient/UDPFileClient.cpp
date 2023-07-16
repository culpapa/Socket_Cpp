#define _CRT_SECURE_NO_WARNINGS

#include <WinSock2.h>
#include <WS2tcpip.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#pragma comment(lib, "ws2_32");

#define PORT 9999
#define SERVER_IP "127.0.0.1"  // 서버 IP 지정

int FileClient() {

    WSADATA wsaData;        // 소켓 초기화 정보 저장 구조체
    SOCKET clntSock;         
    SOCKADDR_IN Addr;    
    FILE *fp;

    char buf[MAX_PATH];
    char EXIT[] = "exit\n";    
    int Size = 0, sendBytes;

    WSAStartup(MAKEWORD(2,2), &wsaData); // 소켓 버전 = 2.2

    clntSock = socket(PF_INET, SOCK_DGRAM, 0); // udp 소켓 생성

    memset(&Addr, 0, sizeof(Addr));
    Addr.sin_family = AF_INET;
    Addr.sin_addr.S_un.S_addr = inet_addr(SERVER_IP);
    Addr.sin_port = htons(PORT);

    connect(clntSock, (SOCKADDR*)&Addr, sizeof(Addr));
    fp = fopen("C:\\CData\\test2.txt", "rb");

    while(TRUE) {
        sendBytes = fread(buf, sizeof(char), sizeof(buf), fp);

        sendto(clntSock, buf, sendBytes, 0, (SOCKADDR *)&Addr, sizeof(Addr));

        if (sendBytes == 0) {
            printf("File transfer complete\n");
            break;
        }

    }

    return 0;
}