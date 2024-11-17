#include "../evantSwitch.hpp"

void saveNewCitizenInformation(const request &req, response &res, DataBase &db);
void getAllCitizens(const request &req, response &res, DataBase &db);
void getConcretCitizen(const request &req, response &res, DataBase &db);
void updateCitizenInformation(const request &req, response &res, DataBase &db);

void evantsSwitchInitalaiz(EvantSwitch& evantsMap);

std::string get_query_param(const std::string& url, const std::string& param);