require('sinatra')
require('sinatra/reloader')
require('./lib/places')     # when copy pasting, change file name
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end
