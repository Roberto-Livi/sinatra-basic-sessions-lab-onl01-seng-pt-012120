require_relative 'config/environment'

class App < Sinatra::Base
  
  configure '/' do
    
  end
  
  get '/' do
    erb :'views/index'
  end
  
  
  
  
end