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

post "/cities/:id/delete" do #destroy
 city = City.find_by_id(params[:id])
 city.delete_by_id
 redirect to "/cities"
end
