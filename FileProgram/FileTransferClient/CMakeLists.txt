cmake_minimum_required(VERSION 3.0.0...3.5)
project(FileTransferClientProject VERSION 0.1.0 LANGUAGES C CXX)

include(CTest)
enable_testing()

add_executable(FileTransferClientProject main.cpp FileTransferClient.cpp fileclient.h)
if(WIN32)
  target_link_libraries(FileTransferClientProject wsock32 ws2_32)
endif()

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
