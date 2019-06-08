require_relative("../models/country.rb")
require_relative("../models/city.rb")
require("pry-byebug")

City.delete_all
Country.delete_all

country1 = Country.new({
    "name" => "Italy",
    "has_visited" => true
  })

country2 =  Country.new({
    "name" => "Australia",
    "has_visited" => false
  })

country1.save
country2.save

city1 = City.new ({
    "name" => "Rome",
    "has_visited" => true,
    "country_id" => country1.id
  })

city2 = City.new ({
    "name" => "Venice",
    "has_visited" => true,
    "country_id" => country1.id
  })

city3 = City.new({
    "name" => "Sydney",
    "has_visited" => false,
    "country_id" => country2.id
  })

city1.save
city2.save
city3.save


binding.pry
nil
