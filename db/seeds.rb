require_relative("../models/continent.rb")
require_relative("../models/country.rb")
require_relative("../models/city.rb")
require("pry-byebug")

City.delete_all()
Country.delete_all()
Continent.delete_all()

continent1 = Continent.new({
  "name" => "Africa"
  })

continent2 = Continent.new({
  "name" => "Europe"
  })

continent1.save()
continent2.save()

country1 = Country.new({
  "name" => "Egypt",
  "continent_id" => continent1.id
  })

country2 = Country.new({
  "name" => "Morocco",
  "continent_id" => continent1.id
  })

country3 = Country.new({
  "name" => "Germany",
  "continent_id" => continent2.id
  })

country4 = Country.new({
  "name" => "Italy",
  "continent_id" => continent2.id
  })

country1.save()
country2.save()
country3.save()
country4.save()

city1 = City.new({
  "name" => "Cairo",
  "country_id" => country1.id,
  "visited" => true
  })

city2 = City.new({
  "name" => "Alexandria",
  "country_id" => country1.id,
  "visited" => true
  })

city3 = City.new({
  "name" => "Roma",
  "country_id" => country4.id,
  "visited" => true
  })

city4 = City.new({
  "name" => "Venice",
  "country_id" => country4.id,
  "visited" => false
  })

city1.save()
city2.save()
city3.save()
city4.save()


binding.pry
nil
