require 'bundler'

Bundler.require

require_relative 'lib/pinterest.rb'

class MyApp < Sinatra::Base
get '/' do
    erb :index
end

post '/plastic' do
  @plastic_results = Pinterest.new(params[:plastic])
  erb :plastic_item
end

post '/cardboard' do
  @cardboard_results = Pinterest.new(params[:cardboard])
  erb :cardboard_item
end

post '/glass' do
  @glass_results = Pinterest.new(params[:glass])
  erb :glass_item
end

end