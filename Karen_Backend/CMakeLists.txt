cmake_minimum_required(VERSION 3.10)

project(MyProject)

find_package(OpenSSL REQUIRED)

set(SOURCES

    ./implements/main.cpp
    ./implements/mainImplement.cpp
    ./implements/helperFunctions.cpp
    ./implements/evantSwitch.cpp
    ./implements/dataBase.cpp
    ./implements/evants/evants.cpp

    ./implements/sitizen.cpp
)

add_executable(MyExecutable  ${SOURCES})

target_link_libraries(MyExecutable mysqlcppconn)