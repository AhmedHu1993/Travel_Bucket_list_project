require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/continent.rb' )
also_reload( '../models/*' )

get '/continents' do
  @continents = Continent.all()
  erb ( :"continents/index" )
end

get '/continents/:name' do
  @continent = Continent.find_by_name(params[:name])
  @cities = @continent.cities
  erb(:"continents/view")
end

post '/continents/name' do
  redirect to "/continents/#{params["name"]}"
end
