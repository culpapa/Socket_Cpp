#include <iostream>
#include <queue>
#include <thread>
#include <mutex>
#include <condition_variable>
#include <string>
#include <cstring>
#include <WinSock2.h>
#include <WS2tcpip.h>

#pragma comment(lib, "ws2_32")

const int bufferSize = 5;  // 버퍼의 크기
std::queue<int> buffer;    // 버퍼 (요청을 저장하는 큐)
std::mutex mtx;            // 뮤텍스(상호 배제를 위한 생산자-소비자 간 동기화)
std::condition_variable producerCV, consumerCV; // 조건 변수(동기화를 위한 대기 및 통지)

// 생산자 스레드 함수
void producer(int clientSocket) {
    std::unique_lock<std::mutex> lock(mtx);

    // 버퍼가 가득 차면 생산자가 대기하도록 함
    producerCV.wait(lock, []() { return buffer.size() < bufferSize; });

    // 클라이언트와의 소켓을 받아와 요청 생성 후 버퍼에 추가
    buffer.push(clientSocket);
    std::cout << "Received request from client: " << clientSocket << std::endl;

    // 소비자를 깨워서 요청을 처리하도록 통지
    consumerCV.notify_one();
}

// 소비자 스레드 함수
void consumer() {
    while (true) {
        std::unique_lock<std::mutex> lock(mtx);

        // 버퍼가 비어있으면 소비자가 대기하도록 함
        consumerCV.wait(lock, []() { return !buffer.empty(); });

        int clientSocket = buffer.front();
        buffer.pop();

        lock.unlock();

        // 클라이언트와의 소켓 연결을 처리
        // (이 부분에서 클라이언트와의 통신 등 필요한 작업 수행)

        // 생산자를 깨워서 요청을 추가할 수 있도록 통지
        producerCV.notify_one();

        // 클라이언트와의 소켓을 닫음
        closesocket(clientSocket);
    }
}

int main() {
    WSADATA wsaData;
    if (WSAStartup(MAKEWORD(2, 2), &wsaData) != 0) {
        std::cerr << "Error initializing Winsock" << std::endl;
        return 1;
    }

    int serverSocket, clientSocket;
    struct sockaddr_in serverAddr, clientAddr;
    int addrLen = sizeof(clientAddr);

    // 소켓 생성
    serverSocket = socket(AF_INET, SOCK_STREAM, 0);
    if (serverSocket == -1) {
        std::cerr << "Error creating socket" << std::endl;
        WSACleanup();
        return 1;
    }

    // 서버 주소 설정
    serverAddr.sin_family = AF_INET;
    serverAddr.sin_port = htons(6666); // 포트 번호 6666 사용
    serverAddr.sin_addr.s_addr = INADDR_ANY;

    // 소켓 바인딩
    if (bind(serverSocket, (struct sockaddr *)&serverAddr, sizeof(serverAddr)) == -1) {
        std::cerr << "Error binding socket" << std::endl;
        closesocket(serverSocket);
        WSACleanup();
        return 1;
    }

    // 클라이언트로부터 연결 대기
    if (listen(serverSocket, 5) == -1) {
        std::cerr << "Error listening" << std::endl;
        closesocket(serverSocket);
        WSACleanup();
        return 1;
    }

    //std::thread consumerThread(consumer);

    while (true) {
        // 클라이언트로부터 연결 요청 수락
        clientSocket = accept(serverSocket, (struct sockaddr *)&clientAddr, &addrLen);
        if (clientSocket == -1) {
            std::cerr << "Error accepting connection" << std::endl;
            continue;
        }

        std::thread producerThread(producer, clientSocket);
        producerThread.detach();
    }

    std::thread consumerThread(consumer);

    consumerThread.join();
    closesocket(serverSocket);
    WSACleanup();

    return 0;
}
