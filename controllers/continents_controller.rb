require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/continent.rb' )
also_reload( '../models/*' )

get '/continents' do
  @continents = Continent.all()
  erb ( :"zombies/index" )
end
