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
  Game.store = Game.new(params[:player1],params[:player2])
  redirect '/play'
end

get '/play' do
  @game = Game.store
  erb(:play)
end

get '/attack' do
  @game = Game.store
  @game.attack(@game.not_turn)
  erb :attack
end

post '/switch_turn' do
  @game = Game.store
  redirect '/game_over' if @game.game_over_check?
  @game.switch_turn
  redirect '/play'
end

get '/game_over' do
  @game = Game.store
 erb(:game_over)
end


  run! if app_file == $0
end

# start the server if ruby file executed directly
