#define _CRT_SECURE_NO_WARNINGS

#include <WinSock2.h>
#include <WS2tcpip.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#pragma comment(lib, "ws2_32");

#define PORT 9999

int FileServer(void)
{
    printf("Server is ready\n");

    WSADATA wsaData;        // 소켓 초기화 정보 저장 구조체
    SOCKET hListen;         // 접속 수락을 위한 소켓
    SOCKET hClient;         // 클라이언트와 연결을 위한 소켓
    SOCKADDR_IN listnAddr;  // 소켓의 주소 정보 저장 구조체
    SOCKADDR_IN ClntAddr;   // 클라이언트의 주소 정보 저장 구조체

    char buf[MAX_PATH];       
    int Size = 0, fileSize, readBytes=1024;
    FILE *fp;

    WSAStartup(MAKEWORD(2,2), &wsaData); // 소켓 버전 = 2.2

    hListen = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP);  // 소켓 생성

    // 소켓의 주소 정보 저장
    listnAddr.sin_family = AF_INET;
    listnAddr.sin_port = htons(PORT);

    // 소켓 접속 대기 상태
    bind(hListen, (SOCKADDR*)&listnAddr, sizeof(listnAddr));
    listen(hListen, SOMAXCONN);

    Size = sizeof(ClntAddr);
    
    hClient = accept(hListen, (SOCKADDR*)&ClntAddr, &Size);  // 클라이언트 접속 허용
    if(!(hClient==SOCKET_ERROR)) {
        printf("Client Connect\n");
        printf("Start saving file\n");
    }

    fp = fopen("C:\\SData\\cppfile.txt", "wb");

    while(readBytes != 0) {
        readBytes = recv(hClient, buf, MAX_PATH, 0);
        fwrite(buf, sizeof(char), readBytes, fp);
    }

    printf("File save complete\n");
    fclose(fp);
    closesocket(hClient);
    closesocket(hListen);
    return 0;

}