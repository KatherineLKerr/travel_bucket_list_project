require("sinatra")
require("sinatra/contrib/all")
require( 'pry-byebug' )
require_relative("../models/city.rb")
also_reload("../models/*")

get "/cities" do #index - cities
  @cities = City.all
  erb(:"cities/cities")
end

get '/cities/new' do #new
  @countries = Country.all
  @cities = City.all
  erb(:"cities/new")
end

get "/cities/:id" do #show
  @city = City.find_by_id(params[:id])
  erb(:"cities/show")
end

post "/cities" do #create
  new_city = City.new(params)
  new_city.save
  erb(:confirmation)
end

get "/cities/:id/edit" do #edit
  @countries = Country.all
  @city = City.find_by_id(params[:id])
  erb(:"cities/edit")
end

post "/cities/:id" do #update
  p params
  City.new(params).update

  erb(:confirmation)
end

# post "/countries/:id/delete" do #destroy
#  country = Country.find_by_id(params[:id])
#  country.delete_by_id
#  redirect to "/countries"
# end


##FOR COUNTRIES cities will be the same(just replace countries with cities lol) i think.
#               because the cities dont need to be inside /countries they are just linked to from in there.
#
# index  = get  "/countries"
# show   = get  "/countries/:id"
# new    = get  "/countries/new"
# create = post "/countries"
# edit   = get  "/countries/:id/edit"
# update = post "/countries/:id"
# destroy= post "/countries/id/delete"
