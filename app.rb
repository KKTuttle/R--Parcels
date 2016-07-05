require('sinatra')
require('sinatra/reloader')
require('pry')
require('launchy')
require('./lib/Parcels')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get ('/results') do
  width = params.fetch('width').to_i
  length = params.fetch('length').to_i
  height = params.fetch('height').to_i
  weight = params.fetch('weight').to_i
  speed = params.fetch('speed')
  @parcel = Parcel.new(width, length, height, weight, speed)
  erb(:results)
end
