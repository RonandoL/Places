require('sinatra')
require('sinatra/reloader')
require('./lib/places')     # when copy pasting, change file name
also_reload('lib/**/*.rb')

get('/') do
  @print_location = Places.all()
  erb(:index)
end

get('/results') do
  locate = params.fetch('our_place')
  place = Places.new(locate)
  place.save()
  @place = place
  erb(:results)
end
