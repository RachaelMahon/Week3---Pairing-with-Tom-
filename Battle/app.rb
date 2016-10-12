require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, "My session secret"

  get '/' do
    erb(:index)
  end

post '/names' do
  session[:player1] = params[:player1]
  session[:player2] = params[:player2]
  p session[:player2]
  p params[:player1]
  redirect '/play'
end

get '/play' do
  @player1 = session[:player1]
  @player2 = session[:player2]
  @player1_HP = 100
  @player2_HP = 100
  erb(:play)
end

  run! if app_file == $0
end

# start the server if ruby file executed directly
