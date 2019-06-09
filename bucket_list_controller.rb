require("sinatra")
require("sinatra/contrib/all")
require_relative("controllers/cities_controller")
require_relative("controllers/countries_controller")


get "/" do
  erb(:index)
end

get "/about" do
  erb(:about)
end

get "/your_bucket_list" do
  @countries = Country.all
  @cities = City.all
  erb(:your_bucket_list)
end
