require("sinatra")
require("sinatra/contrib/all")
require( 'pry-byebug' )
require_relative("../models/city.rb")
also_reload("../models/*")

get '/cities/new' do
  erb(:"cities/new")
end
