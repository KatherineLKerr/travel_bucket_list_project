require("sinatra")
require("sinatra/contrib/all")
require( 'pry-byebug' )
require_relative("../models/city.rb")
also_reload("../models/*")

get "/cities" do #index - cities
  @cities = City.all
  erb(:"cities/cities")
end

# get '/countries/new' do #new
#   @countries = Country.all
#   erb(:"countries/new")
# end
#
# get "/countries/:id" do #show
#   @cities = City.all
#   @country = Country.find_by_id(params[:id])
#   erb(:"countries/show")
# end
#
# post "/countries" do #create
#   new_country = Country.new(params)
#   new_country.save
#   erb(:confirmation)
# end
#
# get "/countries/:id/edit" do #edit
#   @country = Country.find_by_id(params[:id])
#   erb(:"countries/edit")
# end
#
# post "/countries/:id" do #update
#   Country.new(params).update
#   erb(:confirmation)
# end
#
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
