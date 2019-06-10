require("sinatra")
require("sinatra/contrib/all")
require( 'pry-byebug' )
require_relative("../models/country.rb")
also_reload("../models/*")

get '/countries/new' do #new
  @countries = Country.all
  erb(:"countries/new")
end

post "/countries" do #create
  new_country = Country.new(params)
  new_country.save
  erb(:confirmation)
end
