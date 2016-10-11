require 'sinatra/base'



class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    erb :play
  end

  get '/play' do
    
  end

  run! if app_file == $0
end

# start the server if ruby file executed directly
