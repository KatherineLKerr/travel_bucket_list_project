require("sinatra")
require("sinatra/contrib/all")
require( 'pry-byebug' )
require_relative("../models/city.rb")
also_reload("../models/*")

get '/cities/new' do
  @countries = Country.all
  @cities = City.all
  erb(:"cities/new")
end
