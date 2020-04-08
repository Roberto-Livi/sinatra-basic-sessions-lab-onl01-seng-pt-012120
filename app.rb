require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  
  configure '/' do
    enable :sessions
    set :session_secret, "secret"
  end
  
  get '/' do
    erb :'views/index'
  end
  
  post '/checkout' do
    binding.pry
    session["product"]["name"]
    @sessions = session
    erb :'views/checkout'
  end
  
  
  
end