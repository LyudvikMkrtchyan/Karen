#include "dataBase.hpp"
#include "evantSwitch.hpp"
#include <boost/beast/http/status.hpp>
#include <iostream>

#include <nlohmann/json_fwd.hpp>
#include <exception>

#include <boost/beast/core.hpp>
#include <boost/beast/http.hpp>
#include <boost/asio.hpp>
#include <boost/beast/http/verb.hpp>

namespace beast = boost::beast;             // from <boost/beast.hpp>
namespace http = beast::http;               // from <boost/beast/http.hpp>
namespace net = boost::asio;                // from <boost/asio.hpp>
using tcp = net::ip::tcp; 

void session(boost::asio::ip::tcp::socket socket, DataBase& db);