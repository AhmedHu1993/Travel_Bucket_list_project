require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/city.rb' )
require_relative( '../models/continent.rb' )
require_relative( '../models/country.rb' )
also_reload( '../models/*' )

get '/countries' do
  @countries = Country.all
  erb(:"countries/index")
end

get "/countries/new" do
  @continents = Continent.all
  erb(:'countries/new')
end

post "/countries" do
  country = Country.new(params)
  country.save
  redirect to("/countries")
end

get '/countries/:id' do
  @country = Country.find_by_id(params[:id])
  erb(:'countries/show')
end

post "/countries/:id/delete" do
  country = Country.find_by_id(params[:id])
  country.delete()
  redirect to '/countries'
end

get "/countries/:id/edit" do
  @country = Country.find_by_id(params[:id])
  @continents = Continent.all
  erb(:'countries/edit')
end

post "/countries/:id" do
  Country.new(params).update
  redirect to '/countries'
end
