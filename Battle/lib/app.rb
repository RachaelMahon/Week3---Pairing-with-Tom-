require 'sinatra/base'
require_relative 'views/player'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, "My session secret"

  get '/' do
    erb(:index)
  end

post '/names' do
  $playerone = Player.new(params[:player1])
  $playertwo = Player.new(params[:player2])
  redirect '/play'
end

get '/play' do
  @player1 = $playerone
  @player2 = $playertwo
  erb(:play)
end

get '/attack' do
  @player1 = $playerone
  @player2 = $playertwo
  @player1.attack(@player2)
  erb :attack
end

  run! if app_file == $0
end

# start the server if ruby file executed directly
