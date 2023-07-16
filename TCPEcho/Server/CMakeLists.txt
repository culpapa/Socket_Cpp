cmake_minimum_required(VERSION 3.0.0...3.5)
project(TCPEchoServerProject VERSION 0.1.0 LANGUAGES C CXX)

include(CTest)
enable_testing()

add_executable(TCPEchoServerProject main.cpp TCPEchoServer.cpp server.h)
if(WIN32)
  target_link_libraries(TCPEchoServerProject wsock32 ws2_32)
endif()

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
