require 'bundler'
Bundler.require

require_relative ''
class MyApp < Sinatra::Base
get '/' do
    erb :index
  end

  

end