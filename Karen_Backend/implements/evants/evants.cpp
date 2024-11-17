#include "../../includes/evants/evants.hpp"
#include <cppconn/prepared_statement.h>
#include <memory>
#include <nlohmann/json_fwd.hpp>


void saveNewCitizenInformation(const request &req, response &res, DataBase &db){
    nlohmann::json json  = nlohmann::json::parse(req.body());
    
    db.saveNewCitizenInformation(json);
    res.result(boost::beast::http::status::ok);
    
}
void getAllCitizens(const request &req, response &res, DataBase &db){
    std::cout << "getAllCitizens is runned" << std::endl;
    nlohmann::json answerJson = nlohmann::json::array();

    answerJson = db.getAllCitizens();

    if(!answerJson.empty()){
        res.result(boost::beast::http::status::ok);
    }else{
        res.result(boost::beast::http::status::unauthorized);
    }
    res.set(boost::beast::http::field::content_type, "application/json");
    std::cout << answerJson.dump(4) << std::endl;
    res.body() = answerJson.dump();
}
void getConcretCitizen(const request &req, response &res, DataBase &db){
    std::cout << "getConcretCitizen is runned" << std::endl;
    nlohmann::json answerJson;
    std::string url = req.target(); 
    std::string paramName = "id";

    std::string cleanParam = (get_query_param(url, paramName));
    int id = std::stoi(cleanParam);
    std::cout << "citizen id = " <<  id << std::endl;

    answerJson = db.getConcretCitizen(id);

    if(!answerJson.empty()){
        res.result(boost::beast::http::status::ok);
    }else{
        res.result(boost::beast::http::status::unauthorized);
    }
    res.set(boost::beast::http::field::content_type, "application/json");
    std::cout << answerJson.dump(4) << std::endl;
    res.body() = answerJson.dump();
}

void updateCitizenInformation(const request &req, response &res, DataBase &db){
    nlohmann::json json  = nlohmann::json::parse(req.body());
    
    db.updateCitizenInformation(json);
    res.result(boost::beast::http::status::ok);

}

void evantsSwitchInitalaiz(EvantSwitch& evantsMap){
    evantsMap.addEvant("/saveNewCitizenInformation", saveNewCitizenInformation);
    evantsMap.addEvant("/getAllCitizens", getAllCitizens);
    evantsMap.addEvant("/getConcretCitizen", getConcretCitizen);
    evantsMap.addEvant("/updateCitizenInformation", updateCitizenInformation);
}   


std::string get_query_param(const std::string& url, const std::string& param) {
    std::cout << " get_query_param is runned" << std::endl;
    size_t start_pos = url.find(param + "=");
    if (start_pos == std::string::npos) {
        return "";  // Параметр не найден
    }
    start_pos += param.length() + 1;
    size_t end_pos = url.find("&", start_pos);
    if (end_pos == std::string::npos) {
        end_pos = url.length();
    }
    return url.substr(start_pos, end_pos - start_pos);
}

