require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/cities_controller')
require_relative('controllers/continents_controller')
require_relative('controllers/countries_controller')

get '/' do
  @continents = Continent.all
  @countries = Country.all
  @cities = City.all
  erb( :index )
end
