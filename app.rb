require('sinatra')
require('sinatra/reloader')
require('./lib/allergies')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/allergy_output') do
  @allergies = params.fetch('allergies').allergies()
  erb(:allergy_output)
end
