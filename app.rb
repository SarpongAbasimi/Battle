require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    $Player1 = Player.new(params[:Player1])
    $Player2 = Player.new(params[:Player2])
    redirect to '/play'
  end

  get '/play' do
    @player_one_name =  $Player1.name
    @player_two_name =  $Player2.name
    @player_two_HP = $Player2.HP
    erb :play
  end

  post '/attack' do
    @player_one_name = $Player1.name
    @player_two_name = $Player2.name
    $Player1.attack($Player2)
    @player_two_HP = $Player2.HP
    erb :attack
  end

  run! if __FILE__ == $0
end
