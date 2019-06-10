require("sinatra")
require("sinatra/contrib/all")
require_relative("controllers/countries_controller")
require_relative("controllers/cities_controller")


get "/" do
  erb(:home)
end

get "/about" do
  erb(:about)
end
