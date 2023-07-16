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
    SOCKET servSock;         
    SOCKADDR_IN servAddr;  
    SOCKADDR_IN clntAddr;   

    char buf[MAX_PATH]; 
    int Size = 0, readBytes = 1024;
    FILE *fp;

    WSAStartup(MAKEWORD(2,2), &wsaData); // 소켓 버전 = 2.2

    servSock = socket(PF_INET, SOCK_DGRAM, 0); // udp 소켓 생성

    memset(&servAddr, 0, sizeof(servAddr));
    servAddr.sin_family = AF_INET;
    servAddr.sin_addr.S_un.S_addr = htonl(INADDR_ANY);
    servAddr.sin_port = htons(PORT);

    bind(servSock, (SOCKADDR*)&servAddr, sizeof(servAddr));

    fp = fopen("C:\\SData\\cppudpfile.txt", "wb");
    Size = sizeof(clntAddr);

    while(readBytes != 0) {
        readBytes = recvfrom(servSock, buf, MAX_PATH, 0, (SOCKADDR*)&clntAddr, &Size);
        fwrite(buf, sizeof(char), readBytes, fp);
    }
 

    printf("File save complete\n");
    fclose(fp);
    closesocket(servSock);

    return 0;
}