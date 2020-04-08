require_relative 'config/environment'

class App < Sinatra::Base
  
  configure '/' do
    enable :sessions
    set :session_secret, "ironflatsecret"
  end
  
  get '/' do
    erb :'views/index'
  end
  
  post '/checkout' do
    session[product][name]
    erb :'views/checkout'
  end
  
  
  
end