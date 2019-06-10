require("sinatra")
require("sinatra/contrib/all")
require( 'pry-byebug' )
require_relative("../models/country.rb")
also_reload("../models/*")

get "/countries" do #index - countries
  @countries = Country.all
  erb(:countries)
end

get '/countries/new' do #new
  @countries = Country.all
  erb(:"countries/new")
end

get "/countries/:id" do #show
  @cities = City.all
  @country = Country.find_by_id(params[:id])
  erb(:"countries/show")
end

post "/countries" do #create
  new_country = Country.new(params)
  new_country.save
  erb(:confirmation)
end

get "/countries/:id/edit" do #edit
  @country = Country.find_by_id(params[:id])
  erb(:"countries/edit")
end


##FOR COUNTRIES
#
# index  = get  "/countries"
# show   = get  "/countries/:id"
# new    = get  "/countries/new"
# create = post "/countries"
# edit   = get  "/countries/:id/edit"
# update = post "/countries/:id"
# destroy= post "/countries/id/delete"
