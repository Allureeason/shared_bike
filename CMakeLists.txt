# cmake 最低版本
cmake_minimum_required(VERSION 3.10)

project(shared_bike)

# 查找 protobuf
find_package(Protobuf REQUIRED)
if (PROTOBUF_FOUND)
    message("protobuf found")
else ()
    message(FATAL_ERROR "Cannot find Protobuf")
endif ()


# cpp 标准
set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_CXX_FLAGS "$ENV{CXXFLAGS} -rdynamic -O3 -fPIC -ggdb -std=c++11 -Wall -Wno-deprecated -Wno-builtin-macro-redefined -Wno-deprecated-declarations")
set(CMAKE_C_FLAGS "$ENV{CXXFLAGS} -rdynamic -O3 -fPIC -ggdb -std=c11 -Wall -Wno-deprecated -Wno-builtin-macro-redefined -Wno-deprecated-declarations")

include_directories(/usr/local/include)

add_library(shared_bike SHARED
    src/ret_code.cpp
    src/iEvent.cpp
    src/events.cpp
    src/user_event_handler.cpp
    src/DispatchMsgService.cpp

    src/threadpool/thread_cond.cpp
    src/threadpool/thread_mutex.cpp
    src/threadpool/thread_pool.cpp
    src/proto/bike.pb.cc
)


set(LINK_LIB
    shared_bike
    protobuf
    log4cpp
    pthread
)

add_executable(SharedBike src/main.cpp)
add_dependencies(SharedBike shared_bike)
target_link_libraries(SharedBike ${LINK_LIB})

# 设置动态库和可执行文件的输出路径
SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
SET(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)
