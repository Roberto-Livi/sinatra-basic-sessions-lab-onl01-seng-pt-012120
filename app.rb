require_relative 'config/environment'

class App < Sinatra::Base
  
  configure '/' do
    enable :sessions
    
  end
  
  get '/' do
    erb :'views/index'
  end
  
  
  
  
end