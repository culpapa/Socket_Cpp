
#include <iostream>
#include <stdio.h>
#include <winsock2.h>
#include <memory>

#pragma comment(lib, "ws2_32")

#define PORT 9995

int Select_Server()
{
    printf("Server is ready\n");

	WSADATA wsaData;
	SOCKET serverSocket; 
	struct sockaddr_in serv_addr, accept_addr;  // 주소 정보 저장 구조체
	char buf[MAX_PATH];
	fd_set temp_fds, read_fds;  // 파일 디스크립터 선언, 소켓의 그룹을 나타냄

	int readn, addr_len;
	int i, fd_num;

	WSAStartup(MAKEWORD(2, 2), &wsaData);

	serverSocket = socket(AF_INET, SOCK_DGRAM, 0);  // 소켓 생성

	memset(&serv_addr, 0, sizeof(serv_addr));

	// 소켓 주소 정보 저장
	serv_addr.sin_family = AF_INET;
	serv_addr.sin_port = htons(PORT);

	bind(serverSocket, (struct sockaddr*)&serv_addr, sizeof(serv_addr));

	FD_ZERO(&read_fds);  			  // 파일 디스크립터 초기화
	FD_SET(serverSocket, &read_fds);  // serverSocket 소켓을 FD_SET에 등록

	while (TRUE)
	{
		temp_fds = read_fds;

		fd_num = select(0, &temp_fds, NULL, NULL, NULL);

		for (i = 0; i <= temp_fds.fd_count; i++)
		{
			SOCKET currentSocket = temp_fds.fd_array[i];

			if (FD_ISSET(currentSocket, &temp_fds))
			{
				
                addr_len = sizeof(struct sockaddr_in);

                recvfrom(serverSocket, buf, MAX_PATH, 0, (struct sockaddr*)&serv_addr, &addr_len);
                printf("from Client : %s", buf);

                sendto(serverSocket, buf, MAX_PATH, 0, (struct sockaddr*)&serv_addr, sizeof(serv_addr));

			}

			if (--fd_num <= 0) break;
		}
	}
	closesocket(serverSocket);
	WSACleanup();
	return 0;
}