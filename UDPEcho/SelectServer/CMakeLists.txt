cmake_minimum_required(VERSION 3.0.0...3.5)
project(SelectUDPEchoServerProject VERSION 0.1.0 LANGUAGES C CXX)

include(CTest)
enable_testing()

add_executable(SelectUDPEchoServerProject main.cpp SelectUDPEchoServer.cpp server.h)
if(WIN32)
  target_link_libraries(SelectUDPEchoServerProject wsock32 ws2_32)
endif()

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
