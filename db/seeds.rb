require_relative("../models/continent.rb")
require_relative("../models/country.rb")
require_relative("../models/city.rb")
require_relative("../models/sight.rb")
require("pry-byebug")

Sight.delete_all()
City.delete_all()
Country.delete_all()
Continent.delete_all()

continent1 = Continent.new({
  "name" => "Africa"
  })

continent2 = Continent.new({
  "name" => "Europe"
  })

continent3 = Continent.new({
  "name" => "Asia"
  })

continent4 = Continent.new({
  "name" => "North-America"
  })

continent5 = Continent.new({
  "name" => "South-America"
  })

continent6 = Continent.new({
  "name" => "Australia"
  })

continent1.save()
continent2.save()
continent3.save()
continent4.save()
continent5.save()
continent6.save()

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

sight1 = Sight.new({
  "name" => "Bibliotheca Alexandrina",
  "city_id" => city2.id
  })

sight2 = Sight.new({
  "name" => "Montaza Palace",
  "city_id" => city2.id
  })

sight1.save
sight2.save

binding.pry
nil
