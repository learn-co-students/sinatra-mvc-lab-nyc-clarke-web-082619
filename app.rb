require_relative './config/environment.rb'
ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require_all 'models'

class App < Sinatra::Base


    
    @piglatin_text = ""
    get '/' do
        erb :user_input
    end


    post '/piglatinize' do
        status 200
        original_text = params["user_phrase"]
        converter = PigLatinizer.new
        @piglatin_text = converter.piglatinize(original_text)
        erb :piglatinized
    end
end