require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    @player_one_name = params[:Player1]
    @player_two_name = params[:Player2]
    @player_two_HP = 8000
    erb :play
  end

  run! if __FILE__ == $0
end
