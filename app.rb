require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 
        erb :user_input
    end

    post '/piglatinize' do    
        new_word = PigLatinizer.new
        @pig_new_word = new_word.piglatinize(params[:user_phrase])
        erb :piglatinize
    end

end