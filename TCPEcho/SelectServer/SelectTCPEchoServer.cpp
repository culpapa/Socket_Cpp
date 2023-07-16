#pragma comment(lib, "ws2_32")

#include <iostream>
#include <stdio.h>
#include <winsock2.h>
#include <memory>

#pragma comment(lib, "ws2_32")

#define PORT 7777

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

	serverSocket = socket(AF_INET, SOCK_STREAM, 0);  // 소켓 생성

	memset(&serv_addr, 0, sizeof(serv_addr));
	
	// 소켓 주소 정보 저장
	serv_addr.sin_family = AF_INET;
	serv_addr.sin_port = htons(PORT);

	// 소켓 접속 대기
	bind(serverSocket, (struct sockaddr*)&serv_addr, sizeof(serv_addr));
	listen(serverSocket, SOMAXCONN);

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
				// 접속 요청인 경우
				if (currentSocket == serverSocket )
				{
					addr_len = sizeof(struct sockaddr_in);
	
					SOCKET clientSocket = accept(serverSocket, (struct sockaddr*)&accept_addr, &addr_len);
					if (!(clientSocket == INVALID_SOCKET))
					{
						printf("Client Connect\n");
					}
					// 연결온 클라이언트 소켓정보 read_fds에 추가
					FD_SET(clientSocket, &read_fds);

				} else { 
					
					//기존 연결된 소켓으로부터 메시지를 받을 때
					memset(buf, 0, MAX_PATH);
					readn = recv(currentSocket, buf, MAX_PATH, 0);
					if (readn <= 0)
					{
						printf("Disconnect Client\n");
						closesocket(currentSocket);

						// 연결 끊긴 소켓 read_fds에서 제외
						FD_CLR(currentSocket, &read_fds);
					}
					else
					{
						printf("form Client : %s",buf);
						send(currentSocket, buf, readn, 0);
					}
				}

				if (--fd_num <= 0) break;
			}
		}
	}
	closesocket(serverSocket);
	WSACleanup();
	return 0;
}