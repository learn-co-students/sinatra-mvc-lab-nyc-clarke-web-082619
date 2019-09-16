require_relative '../config/environment'

class App < Sinatra::Base

    converter = PigLatinizer.new
    get '/' do

    end

    post '/piglatinize' do

    end
end