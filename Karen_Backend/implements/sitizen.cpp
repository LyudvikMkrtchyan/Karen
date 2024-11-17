#include "../includes/sitizen.hpp"
#include <cppconn/connection.h>
#include <cppconn/prepared_statement.h>
#include <cppconn/resultset.h>
#include <cppconn/statement.h>
#include <memory>

Sitizen::Sitizen(sql::Connection* conn):connection(conn){}

void Sitizen::saveNewCitizenInformation(nlohmann::json json){
    {
  std::string country = json.contains("country") ? json["country"].get<std::string>() : "";
std::string name = json.contains("name") ? json["name"].get<std::string>() : "";
std::string surname = json.contains("surname") ? json["surname"].get<std::string>() : "";
std::string fatherName = json.contains("fatherName") ? json["fatherName"].get<std::string>() : "";
std::string birthDate = json.contains("birthDate") ? json["birthDate"].get<std::string>() : "";
std::string nodes = json.contains("notes") ? json["notes"].get<std::string>() : "";

std::string embassyToMOFA1 = json.contains("embassyToMOFA1") ? json["embassyToMOFA1"].get<std::string>() : "";
std::string embassyToMOFA2 = json.contains("embassyToMOFA2") ? json["embassyToMOFA2"].get<std::string>() : "";
std::string embassyToMOFA3 = json.contains("embassyToMOFA3") ? json["embassyToMOFA3"].get<std::string>() : "";

std::string MOFAtoCommisariat1 = json.contains("MOFAtoCommisariat1") ? json["MOFAtoCommisariat1"].get<std::string>() : "";
std::string MOFAtoCommisariat2 = json.contains("MOFAtoCommisariat2") ? json["MOFAtoCommisariat2"].get<std::string>() : "";
std::string MOFAtoCommisariat3 = json.contains("MOFAtoCommisariat3") ? json["MOFAtoCommisariat3"].get<std::string>() : "";

std::string MOFAtoEmbassy1 = json.contains("MOFAtoEmbassy1") ? json["MOFAtoEmbassy1"].get<std::string>() : "";
std::string MOFAtoEmbassy2 = json.contains("MOFAtoEmbassy2") ? json["MOFAtoEmbassy2"].get<std::string>() : "";
std::string MOFAtoEmbassy3 = json.contains("MOFAtoEmbassy3") ? json["MOFAtoEmbassy3"].get<std::string>() : "";

std::string commisariatToMOFA1 = json.contains("commisariatToMOFA1") ? json["commisariatToMOFA1"].get<std::string>() : "";
std::string commisariatToMOFA2 = json.contains("commisariatToMOFA2") ? json["commisariatToMOFA2"].get<std::string>() : "";
std::string commisariatToMOFA3 = json.contains("commisariatToMOFA3") ? json["commisariatToMOFA3"].get<std::string>() : "";

    
    

    std::unique_ptr<sql::PreparedStatement> pstmt (connection->prepareStatement(R"(
        INSERT INTO CitizenInformation(
        country, name, surname, fathername, birthDate, notes,
        embassyToMOFA1, embassyToMOFA2, embassyToMOFA3,
        MOFAtoCommisariat1, MOFAtoCommisariat2, MOFAtoCommisariat3,
        MOFAtoEmbassy1, MOFAtoEmbassy2, MOFAtoEmbassy3,
        commisariatToMOFA1, commisariatToMOFA2, commisariatToMOFA3)
        Values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) )"));
        
        pstmt->setString(1, country);
        pstmt->setString(2, name);
        pstmt->setString(3, surname);
        pstmt->setString(4, fatherName);
        pstmt->setString(5, birthDate);
        pstmt->setString(6, nodes);

        pstmt->setString(7, embassyToMOFA1);
        pstmt->setString(8, embassyToMOFA2);
        pstmt->setString(9, embassyToMOFA3);

        pstmt->setString(10, MOFAtoCommisariat1);
        pstmt->setString(11, MOFAtoCommisariat2);
        pstmt->setString(12, MOFAtoCommisariat3);

        pstmt->setString(13, MOFAtoEmbassy1);
        pstmt->setString(14, MOFAtoEmbassy2);
        pstmt->setString(15, MOFAtoEmbassy3);

        pstmt->setString(16, commisariatToMOFA1);
        pstmt->setString(17, commisariatToMOFA2);
        pstmt->setString(18, commisariatToMOFA3);

    pstmt->execute();

 
  }

}
void Sitizen::updateCitizenInformation(nlohmann::json json){

std::string country = json.contains("country") ? json["country"].get<std::string>() : "";
std::string name = json.contains("name") ? json["name"].get<std::string>() : "";
std::string surname = json.contains("surname") ? json["surname"].get<std::string>() : "";
std::string fatherName = json.contains("fatherName") ? json["fatherName"].get<std::string>() : "";
std::string birthDate = json.contains("birthDate") ? json["birthDate"].get<std::string>() : "";
std::string nodes = json.contains("notes") ? json["notes"].get<std::string>() : "";

std::string embassyToMOFA1 = json.contains("embassyToMOFA1") ? json["embassyToMOFA1"].get<std::string>() : "";
std::string embassyToMOFA2 = json.contains("embassyToMOFA2") ? json["embassyToMOFA2"].get<std::string>() : "";
std::string embassyToMOFA3 = json.contains("embassyToMOFA3") ? json["embassyToMOFA3"].get<std::string>() : "";

std::string MOFAtoCommisariat1 = json.contains("MOFAtoCommisariat1") ? json["MOFAtoCommisariat1"].get<std::string>() : "";
std::string MOFAtoCommisariat2 = json.contains("MOFAtoCommisariat2") ? json["MOFAtoCommisariat2"].get<std::string>() : "";
std::string MOFAtoCommisariat3 = json.contains("MOFAtoCommisariat3") ? json["MOFAtoCommisariat3"].get<std::string>() : "";

std::string MOFAtoEmbassy1 = json.contains("MOFAtoEmbassy1") ? json["MOFAtoEmbassy1"].get<std::string>() : "";
std::string MOFAtoEmbassy2 = json.contains("MOFAtoEmbassy2") ? json["MOFAtoEmbassy2"].get<std::string>() : "";
std::string MOFAtoEmbassy3 = json.contains("MOFAtoEmbassy3") ? json["MOFAtoEmbassy3"].get<std::string>() : "";

std::string commisariatToMOFA1 = json.contains("commisariatToMOFA1") ? json["commisariatToMOFA1"].get<std::string>() : "";
std::string commisariatToMOFA2 = json.contains("commisariatToMOFA2") ? json["commisariatToMOFA2"].get<std::string>() : "";
std::string commisariatToMOFA3 = json.contains("commisariatToMOFA3") ? json["commisariatToMOFA3"].get<std::string>() : "";
int citizenId = json["citizenId"];

    
    

    std::unique_ptr<sql::PreparedStatement> pstmt (connection->prepareStatement(R"(
        UPDATE CitizenInformation
        SET country = ? , name = ?, surname = ? , fathername = ? , birthDate = ? , notes = ? 
        ,embassyToMOFA1 = ?, embassyToMOFA2 = ?, embassyToMOFA3 = ?,
        MOFAtoCommisariat1 = ?, MOFAtoCommisariat2 = ?, MOFAtoCommisariat3 = ?,
        MOFAtoEmbassy1 = ?, MOFAtoEmbassy2 = ?, MOFAtoEmbassy3 = ?,
        commisariatToMOFA1 = ?, commisariatToMOFA2 = ?, commisariatToMOFA3 = ?
        Where id = ?)"));
        
        pstmt->setString(1, country);
        pstmt->setString(2, name);
        pstmt->setString(3, surname);
        pstmt->setString(4, fatherName);
        pstmt->setString(5, birthDate);
        pstmt->setString(6, nodes);

        pstmt->setString(7, embassyToMOFA1);
        pstmt->setString(8, embassyToMOFA2);
        pstmt->setString(9, embassyToMOFA3);

        pstmt->setString(10, MOFAtoCommisariat1);
        pstmt->setString(11, MOFAtoCommisariat2);
        pstmt->setString(12, MOFAtoCommisariat3);

        pstmt->setString(13, MOFAtoEmbassy1);
        pstmt->setString(14, MOFAtoEmbassy2);
        pstmt->setString(15, MOFAtoEmbassy3);

        pstmt->setString(16, commisariatToMOFA1);
        pstmt->setString(17, commisariatToMOFA2);
        pstmt->setString(18, commisariatToMOFA3);

        pstmt->setInt(19, citizenId);

    pstmt->execute();

 
  }


nlohmann::json Sitizen::getAllCitizens(){
    nlohmann::json answerJson = nlohmann::json::array();
    std::unique_ptr<sql::Statement> stmt(connection->createStatement());

    std::unique_ptr<sql::ResultSet> res(stmt->executeQuery(R"(
      Select name, surname, fatherName, birthDate, id From CitizenInformation;
    )"));

    while(res->next()){
      nlohmann::json tmp;
      std::string name       = res->getString("name");
      std::string surname    = res->getString("surname");
      std::string fatherName = res->getString("fatherName");
      std::string birthDate  = res->getString("birthDate");
      int id                 = res->getInt("id");

      tmp["name"] = name;
      tmp["surname"] = surname;
      tmp["fatherName"] = fatherName;
      tmp["birthDate"] = birthDate;
      tmp["id"] = id;

      answerJson.push_back(tmp);

    }

    return answerJson;
}

nlohmann::json Sitizen::getConcretCitizen(int citizenId){
  nlohmann::json answerJson;
std::unique_ptr<sql::PreparedStatement> pstmt(connection->prepareStatement(R"(
    SELECT * FROM CitizenInformation WHERE id = ?
)"));

pstmt->setInt(1, citizenId);

std::unique_ptr<sql::ResultSet> res(pstmt->executeQuery());

if (res->next()) {
    std::string country           = res->isNull("country") ? "" : res->getString("country");
    std::string name              = res->isNull("name") ? "" : res->getString("name");
    std::string surname           = res->isNull("surname") ? "" : res->getString("surname");
    std::string fatherName        = res->isNull("fatherName") ? "" : res->getString("fatherName");
    std::string birthDate         = res->isNull("birthDate") ? "" : res->getString("birthDate");
    std::string notes             = res->isNull("notes") ? "" : res->getString("notes");

    std::string embassyToMOFA1    = res->isNull("embassyToMOFA1") ? "" : res->getString("embassyToMOFA1");
    std::string embassyToMOFA2    = res->isNull("embassyToMOFA2") ? "" : res->getString("embassyToMOFA2");
    std::string embassyToMOFA3    = res->isNull("embassyToMOFA3") ? "" : res->getString("embassyToMOFA3");

    std::string MOFAtoCommisariat1 = res->isNull("MOFAtoCommisariat1") ? "" : res->getString("MOFAtoCommisariat1");
    std::string MOFAtoCommisariat2 = res->isNull("MOFAtoCommisariat2") ? "" : res->getString("MOFAtoCommisariat2");
    std::string MOFAtoCommisariat3 = res->isNull("MOFAtoCommisariat3") ? "" : res->getString("MOFAtoCommisariat3");

    std::string MOFAtoEmbassy1    = res->isNull("MOFAtoEmbassy1") ? "" : res->getString("MOFAtoEmbassy1");
    std::string MOFAtoEmbassy2    = res->isNull("MOFAtoEmbassy2") ? "" : res->getString("MOFAtoEmbassy2");
    std::string MOFAtoEmbassy3    = res->isNull("MOFAtoEmbassy3") ? "" : res->getString("MOFAtoEmbassy3");

    std::string commisariatToMOFA1 = res->isNull("commisariatToMOFA1") ? "" : res->getString("commisariatToMOFA1");
    std::string commisariatToMOFA2 = res->isNull("commisariatToMOFA2") ? "" : res->getString("commisariatToMOFA2");
    std::string commisariatToMOFA3 = res->isNull("commisariatToMOFA3") ? "" : res->getString("commisariatToMOFA3");
    
    answerJson["id"] = citizenId;
    answerJson["country"] = country;
    answerJson["name"] = name;
    answerJson["surname"] = surname;
    answerJson["fatherName"] = fatherName;
    answerJson["birthDate"] = birthDate;
    answerJson["notes"] = notes;
    answerJson["embassyToMOFA1"] = embassyToMOFA1;
    answerJson["embassyToMOFA2"] = embassyToMOFA2;
    answerJson["embassyToMOFA3"] = embassyToMOFA3;
    answerJson["MOFAtoCommisariat1"] = MOFAtoCommisariat1;
    answerJson["MOFAtoCommisariat2"] = MOFAtoCommisariat2;
    answerJson["MOFAtoCommisariat3"] = MOFAtoCommisariat3;
    answerJson["MOFAtoEmbassy1"] = MOFAtoEmbassy1;
    answerJson["MOFAtoEmbassy2"] = MOFAtoEmbassy2;
    answerJson["MOFAtoEmbassy3"] = MOFAtoEmbassy3;
    answerJson["commisariatToMOFA1"] = commisariatToMOFA1;
    answerJson["commisariatToMOFA2"] = commisariatToMOFA2;
    answerJson["commisariatToMOFA3"] = commisariatToMOFA3;
  
  }

  return answerJson;
}

