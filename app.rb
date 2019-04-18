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
    @player_two_HP = 8000
    erb :play
  end

  post '/attack' do
    @player_one_name = $Player1.name
    @player_two_name = $Player2.name 
    erb :attack
  end

  run! if __FILE__ == $0
end
