require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  get '/piglatinize' do 
    erb :results
  end

  post '/piglatinize' do
    pl = PigLatinizer.new
    @user_phrase = pl.piglatinize(params[:user_phrase])
    erb :results
  end
end