require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  
  configure '/' do
    enable :sessions
    set :session_secret, "022394"
  end
  
  get '/' do
    erb :'views/index'
  end
  
  post '/checkout' do
    @item = params[:item]
    session[:item] = @item
    
    erb :'views/checkout'
    
  end
  
  
  
end