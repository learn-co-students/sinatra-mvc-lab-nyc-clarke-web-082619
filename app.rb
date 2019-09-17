require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end
    
    get '/piglatinize' do 
        erb :phrase
    end
    
    post '/piglatinize' do
        new_word = PigLatinizer.new
        @user_phrase = new_word.piglatinize(params[:user_phrase])
        erb :phrase
    end
    


end