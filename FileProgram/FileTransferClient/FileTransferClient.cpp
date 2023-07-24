#define _CRT_SECURE_NO_WARNINGS

#include <ws2tcpip.h>
#include <WinSock2.h>
#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <string.h>

#pragma comment(lib, "ws2_32");
using namespace std;

void sendFileToServer(SOCKET clientSocket, string sendDir, string saveDir) {

    FILE *fp = fopen(sendDir.c_str(), "rb");
    if (fp == nullptr) {
            printf("File does not exist");
            return;
    }

    send(clientSocket, saveDir.c_str(), strlen(saveDir.c_str()), 0);

    fseek(fp, 0, SEEK_END);
    long fileSize = ftell(fp);
    fseek(fp, 0, SEEK_SET);

    char* fileData = new char[fileSize];
    fread(fileData, sizeof(char), fileSize, fp);

    send(clientSocket, fileData, fileSize, 0);
    delete[] fileData;

    fclose(fp);

    printf("File transfer complete");

}

int FileTransferClient(void) {

    WSADATA wsaData;

    string IP;
    int PORT;
    string sendDir;
    string saveDir;

    cout << "IP : ";
    cin >> IP;

    cout << "Port : ";
    cin >> PORT;

    cout << "Send Dir : ";
    cin >> sendDir;

    cout << "Save Dir : ";
    cin >> saveDir;

    WSAStartup(MAKEWORD(2,2), &wsaData);
    SOCKET clientSocket = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);

    SOCKADDR_IN serverAddr;
    serverAddr.sin_family = AF_INET;
    serverAddr.sin_port = htons(PORT);
    serverAddr.sin_addr.s_addr = inet_addr(IP.c_str());

    int error;
    error = connect(clientSocket, (SOCKADDR*)&serverAddr, sizeof(serverAddr)); 
    if(error != SOCKET_ERROR) {
        printf("Connected to Server\n");
    }

    sendFileToServer(clientSocket, sendDir, saveDir);

    closesocket(clientSocket);
    WSACleanup();

    return 0;
}