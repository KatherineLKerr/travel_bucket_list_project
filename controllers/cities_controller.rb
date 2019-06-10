require("sinatra")
require("sinatra/contrib/all")
require( 'pry-byebug' )
require_relative("../models/city.rb")
also_reload("../models/*")

get '/cities/new' do #new
  @countries = Country.all
  @cities = City.all
  erb(:"cities/new")
end

# post "/index" do #create
#   new_city = City.new(params)
#   new_city.save
#   erb(:confirmation)
# end

# ok so here is what you were thinking:
# city functions (add, create) need to go on a page that isnt /index
# because the forms for two classes cant submit to the same place
# it doesnt seem to work.
