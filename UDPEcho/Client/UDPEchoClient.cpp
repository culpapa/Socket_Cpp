#define _CRT_SECURE_NO_WARNINGS

#include <WinSock2.h>
#include <WS2tcpip.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#pragma comment(lib, "ws2_32");

#define PORT 8888
#define SERVER_IP "127.0.0.1"  // 서버 IP 지정

int Client() {

    WSADATA wsaData;        // 소켓 초기화 정보 저장 구조체
    SOCKET clntSock;         
    SOCKADDR_IN Addr;    

    char Sendbuf[MAX_PATH], Recvbuf[MAX_PATH];
    char EXIT[] = "exit\n";    
    int Size = 0;

    WSAStartup(MAKEWORD(2,2), &wsaData); // 소켓 버전 = 2.2

    clntSock = socket(PF_INET, SOCK_DGRAM, 0); // udp 소켓 생성

    memset(&Addr, 0, sizeof(Addr));
    Addr.sin_family = AF_INET;
    Addr.sin_addr.S_un.S_addr = inet_addr(SERVER_IP);
    Addr.sin_port = htons(PORT);

    connect(clntSock, (SOCKADDR*)&Addr, sizeof(Addr));

    while(TRUE) {
        memset(&Sendbuf, 0, sizeof(Sendbuf));
        printf("to Server : ");
        fgets(Sendbuf, MAX_PATH, stdin);

        if(strcmp(Sendbuf, EXIT) == 0) {
            printf("close");
            break;
        }

        send(clntSock, Sendbuf, MAX_PATH, 0);

        memset(&Recvbuf, 0, sizeof(Recvbuf));
        recv(clntSock, Recvbuf, MAX_PATH, 0);  // 서버로부터 메시지 받음
        printf("from Server : %s", Recvbuf);
    }   

    closesocket(clntSock);
    WSACleanup();

    return 0;
}