require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  # post '/names' do
  #   session[:player_1_name] = params[:player_1_name]
  #   session[:player_2_name] = params[:player_2_name]
  #   p params[:player_1_name]
  #   p session[:player_2_name]
  #   redirect '/play'
  # end
  #
  # get '/play' do
  #   @player_1_name = session[:player_1_name]
  #   @player_2_name = session[:player_2_name]
  #   p session[:player_1_name]
  #   p params[:player_1_name]
  #   p @player_1_name
  #   erb(:play)
  # end

post '/names' do
  session[:player1] = params[:player1]
  session[:player2] = params[:player2]
  p session[:player1]
  p params[:player1]
  redirect '/play'
end

get '/play' do
  @player1 = params[:player1]
  @player2 = params[:player1]
  p session[:player1]
  p params[:player1]
  p @player2
  erb(:play)
end

  run! if app_file == $0
end

# start the server if ruby file executed directly
