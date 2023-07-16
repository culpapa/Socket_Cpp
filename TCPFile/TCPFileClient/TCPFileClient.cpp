#define _CRT_SECURE_NO_WARNINGS

#include <ws2tcpip.h>
#include <WinSock2.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#pragma comment(lib, "ws2_32");

#define PORT 9999
#define SERVER_IP "127.0.0.1"  // 서버 IP 지정

int FileClient(void) {

    WSADATA wsaData;   // 소켓 초기화 정보 저장 구조체
    SOCKADDR_IN Addr;  // 소켓 주소 정보 저장 구조체
    SOCKET hSocket;    // 연결을 위한 소켓
    char buf[MAX_PATH];
    FILE *fp;
    int fileSize, sendSize, sendBytes;

    WSAStartup(MAKEWORD(2,2), &wsaData);

    hSocket = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP); // 소켓 생성

    Addr.sin_family = AF_INET;
    Addr.sin_port = htons(PORT);
    Addr.sin_addr.S_un.S_addr = inet_addr(SERVER_IP); // 접속할 서버 IP 지정

    int error = 0;
    error = connect(hSocket, (SOCKADDR*)&Addr, sizeof(Addr)); // 연결
    if(!(error == SOCKET_ERROR)) {
        printf("Server Connect\n");
        printf("Start file transfer\n");
    }

    fp = fopen("C:\\CData\\test.txt", "rb");
    fseek(fp, 0, SEEK_END);
    fileSize = ftell(fp);
    fseek(fp, 0, SEEK_SET);

    while(sendSize!=fileSize) {
        sendBytes = fread(buf, sizeof(char), sizeof(buf), fp);
        sendSize += sendBytes;
        send(hSocket, buf, sendBytes, 0);
    }
    printf("File transfer complete");
    fclose(fp);
    closesocket(hSocket);

    return 0;
}