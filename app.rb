require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    # post '/' do
    #     @pg = PigLatinizer.new.piglatinize(params[:user_phrase])
    # end

    get '/piglatinize' do
        erb :piglatinize
    end

    post '/piglatinize' do
        @pg = PigLatinizer.new.piglatinize(params[:user_phrase])
    end
end