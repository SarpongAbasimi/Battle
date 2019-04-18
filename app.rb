require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    session[:playerone] = params[:Player1]
    session[:playertwo] = params[:Player2]
    redirect to '/play'
  end

  get '/play' do
    @player_one_name = session[:playerone]
    @player_two_name = session[:playertwo]
    @player_two_HP = 8000
    erb :play
  end

  post '/attack' do
    @player_one_name = session[:playerone]
    @player_two_name = session[:playertwo]
    erb :attack
  end

  run! if __FILE__ == $0
end
