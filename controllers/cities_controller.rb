require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/city.rb' )
require_relative( '../models/continent.rb' )
require_relative( '../models/country.rb' )
require_relative( '../models/sight.rb' )
also_reload( '../models/*' )

get '/cities' do
  @cities = City.all
  erb(:"cities/index")
end

get '/cities/showvisited' do
  @visited_cities = City.visited
  erb(:"cities/visited")
end

get '/cities/showtovisit' do
  @to_visit_cities = City.to_visit
  erb(:'cities/tovisit')
end

get "/cities/new" do
  @countries = Country.all
  erb(:'cities/new')
end

get '/cities/:id' do
  @city = City.find_by_id(params[:id])
  @sights = @city.sights()
  erb(:'cities/show')
end

get "/cities/:id/edit" do
  @city = City.find_by_id(params[:id])
  @countries = Country.all
  erb(:'cities/edit')
end

post "/cities" do
  city = City.new(params)
  city.save
  redirect to("/cities")
end

post "/cities/:id" do
  City.new(params).update
  redirect to '/cities'
end

post "/cities/:id/delete" do
  city = City.find_by_id(params[:id])
  city.delete()
  redirect to '/cities'
end

post '/sights' do
  sight = Sight.new(params)
  sight.save
  redirect to("/cities")
end

post "/sights/:id/delete" do
  sight = Sight.find_by_id(params[:id])
  sight.delete()
  redirect to '/cities'
end
