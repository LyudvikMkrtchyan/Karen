#pragma once
#include "sitizen.hpp"
#include <cppconn/connection.h>
#include <cppconn/resultset.h>
#include <cppconn/statement.h>
#include <mysql_driver.h>
#include <mysql_connection.h>
#include <ctime>
class DataBase:public Sitizen{
public:
    DataBase(sql::Connection* );
private:
    sql::Connection* connection;
public:
};
sql::Connection* connect(std::string, std::string, std::string);