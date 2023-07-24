#define _CRT_SECURE_NO_WARNINGS

#include <WinSock2.h>
#include <WS2tcpip.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#pragma comment(lib, "ws2_32");

#define PORT 6789

void receiveFileFromClient(SOCKET clientSocket) {
    char savePath[256];
    memset(savePath, 0, sizeof(savePath));

    // 파일 이름 받음
    recv(clientSocket, savePath, sizeof(savePath), 0);
    //printf("%s", savePath);

    char fileData[1024];
    int byteRead = 1;

    FILE* fp = fopen(savePath, "wb");

    while(true) {
        byteRead = recv(clientSocket, fileData, sizeof(fileData), 0); 
        fwrite(fileData, 1, byteRead, fp);

        if(byteRead == 0) {
            break;
        }
    }
    fclose(fp);
    printf("File save complete\n");
}

int FileTransferServer(void)
{
    WSADATA wsaData;   

    WSAStartup(MAKEWORD(2,2), &wsaData);
    SOCKET serverSocket = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP);

    SOCKADDR_IN serverAddr;
    serverAddr.sin_family = AF_INET;
    serverAddr.sin_port = htons(PORT);
    serverAddr.sin_addr.S_un.S_addr = INADDR_ANY;

    bind(serverSocket, (SOCKADDR*)&serverAddr, sizeof(serverAddr));   
    listen(serverSocket, 5);

    printf("Server is ready\n");

    while(true) {
        SOCKADDR_IN clientAddr;
        int clientAddrSize = sizeof(clientAddr);

        SOCKET clientSocket = accept(serverSocket, (SOCKADDR*)&clientAddr, &clientAddrSize);
        if (clientSocket != INVALID_SOCKET) {
            printf("Client Connect\n");
        }

        receiveFileFromClient(clientSocket);

        closesocket(clientSocket);
    }

    closesocket(serverSocket);
    WSACleanup();

    return 0;
    
}