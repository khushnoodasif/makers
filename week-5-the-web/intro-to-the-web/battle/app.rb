require "sinatra/base"
require "sinatra/reloader"

class Battle < Sinatra::Base
  enable :sessions

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player_2)
    @game.switch_turns
    erb :attack
  end

  run! if app_file == $0
end