require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
    enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :play
  end
  
  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    game = Game.new($player_2)
    game.attack
    erb :attack
  end

  get '/ok' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end