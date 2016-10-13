require 'sinatra/base'
require_relative 'views/player'
require_relative 'views/game'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, "My session secret"

  get '/' do
    erb(:index)
  end

post '/names' do
  $game = Game.new(params[:player1],params[:player2])
  redirect '/play'
end

get '/play' do
  @game = $game
  erb(:play)
end

get '/attack' do
  @game = $game
  @game.attack(@game.not_turn)
  erb :attack
end

post '/switch_turn' do
  @game = $game
  redirect '/game_over' if @game.game_over_check?
  @game.switch_turn
  redirect '/play'
end

get '/game_over' do
  @game = $game
 erb(:game_over)
end


  run! if app_file == $0
end

# start the server if ruby file executed directly
