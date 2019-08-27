require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/city.rb' )
require_relative( '../models/continent.rb' )
require_relative( '../models/country.rb' )
require_relative( '../models/sight.rb' )
also_reload( '../models/*' )

post '/sights' do
  sight = Sight.new(params)
  sight.save
  redirect to("/cities")
end
