require_relative 'config/environment.rb'

class App < Sinatra::Base

    @converter = PigLatinizer.new
    get '/' do

    end

    post '/piglatinize' do

    end
end