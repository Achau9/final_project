require 'bundler'
Bundler.require

require_relative ''
class MyApp < Sinatra::Base
get '/' do 
  "Hey Guys"
end


  

end