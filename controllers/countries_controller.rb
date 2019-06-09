require("sinatra")
require("sinatra/contrib/all")
require( 'pry-byebug' )
require_relative("../models/country.rb")
also_reload("../models/*")

get '/countries/new' do
  erb(:"countries/new")
end
