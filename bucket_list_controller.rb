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

get "/countries" do #index - countries
  @countries = Country.all
  erb(:countries)
end


##################

# #index - countries
# get "/index"
#
# #index - cities in countries
#
# #####countries routes
#
# #new country
# get "countries/new"
#
# #create country
# post "/index"
#
# #edit country
# get "/index"
#
# #update country
# post "/index/:id"

# #####cities routes problem for later :)
#
# #new city
# get "cities/new"
#
# #create city
# post "index/:id"
#
# #edit city
# get "cities/edit"
#
# #update city
# post "index/:id"
#






####
