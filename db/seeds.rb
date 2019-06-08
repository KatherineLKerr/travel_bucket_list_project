require_relative("../models/country.rb")
require_relative("../models/city.rb")
require("pry-byebug")

City.delete_all
Country.delete_all

country1 = Country.new({
    "name" => "Italy",
    "has_visited" => "false"
  })

country1.save

city1 = City.new ({
    "name" => "Rome",
    "has_visited" => "true",
    "country_id" => country1.id
  })

city1.save
