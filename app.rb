require_relative 'config/environment'

configure do 
    enable :sessions
    set :session_secret, 'SecureRandom.hex(64)'
end

class App < Sinatra::Base
    get '/' do 
        erb :index 
    end

    post '/checkout' do 
        session[:item] = params[:item]
        @session = session
        binding.pry
        erb :checkout
    end
end