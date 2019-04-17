require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    @name = 'hey'
    erb :index
  end

  post '/names' do
    @player_one_name = params[:Player1]
    @player_two_name = params[:Player2]
    erb :play
  end

  run! if __FILE__ == $0
end