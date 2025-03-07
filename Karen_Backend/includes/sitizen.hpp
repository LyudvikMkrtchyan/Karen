#pragma once
#include <nlohmann/json.hpp>
#include <cppconn/connection.h>
#include <cppconn/resultset.h>
#include <cppconn/statement.h>
#include <mysql_driver.h>
#include <mysql_connection.h>
#include <ctime>

class Sitizen{
public:
    Sitizen(sql::Connection*);

public:

    void saveNewCitizenInformation(nlohmann::json json);
    void updateCitizenInformation(nlohmann::json json);
    
    nlohmann::json getAllCitizens();
    nlohmann::json getConcretCitizen(int citizenId);

private:
    sql::Connection* connection;
public:
};