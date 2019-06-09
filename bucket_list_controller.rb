require("sinatra")
require("sinatra/contrib/all")
require_relative("controllers/cities_controller")
require_relative("controllers/countries_controller")


get "/" do
  erb(:home)
end

get "/about" do
  erb(:about)
end

get "/index" do
  @countries = Country.all
  @cities = City.all
  erb(:index)
end
