#define _CRT_SECURE_NO_WARNINGS

#include <ws2tcpip.h>
#include <WinSock2.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#pragma comment(lib, "ws2_32");

#define PORT 7777
#define SERVER_IP "127.0.0.1"  // 서버 IP 지정

int Client(void) {

    WSADATA wsaData;   // 소켓 초기화 정보 저장 구조체
    SOCKADDR_IN Addr;  // 소켓 주소 정보 저장 구조체
    SOCKET hSocket;    // 연결을 위한 소켓
    char Sendbuf[MAX_PATH], Recvbuf[MAX_PATH];
    char EXIT[MAX_PATH] = "exit\n";

    WSAStartup(MAKEWORD(2,2), &wsaData);

    hSocket = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP); // 소켓 생성

    
    Addr.sin_family = AF_INET;
    Addr.sin_port = htons(PORT);
    Addr.sin_addr.S_un.S_addr = inet_addr(SERVER_IP); // 접속할 서버 IP 지정

    int error = 0;
    error = connect(hSocket, (SOCKADDR*)&Addr, sizeof(Addr)); // 연결
    if(!(error == SOCKET_ERROR)) {
        printf("Server Connect\n");
    }

    while(TRUE) {
        memset(&Sendbuf, 0, sizeof(Sendbuf));
        printf("to Server : ");
        fgets(Sendbuf, MAX_PATH, stdin);

        // exit 입력 시에 종료
        if(strcmp(Sendbuf, EXIT) == 0) {
            printf("close");
            break;
        }

        send(hSocket, Sendbuf, MAX_PATH, 0);   // 서버로 메시지를 보냄

        memset(&Recvbuf, 0, sizeof(Recvbuf));
        recv(hSocket, Recvbuf, MAX_PATH, 0);   // 서버로부터 메시지 받음
        printf("from Server : %s", Recvbuf);

    }

    closesocket(hSocket);
    WSACleanup();

    return 0;
}