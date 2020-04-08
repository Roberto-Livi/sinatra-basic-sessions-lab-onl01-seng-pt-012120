require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  
  configure '/' do
    enable :sessions
    set :session_secret, "ironflatsecret"
  end
  
  get '/' do
    erb :'views/index'
  end
  
  post '/checkout' do
    binding.pry
    session["product"]["name"]
    @session = sessions
    erb :'views/checkout'
  end
  
  
  
end