require_relative 'config/environment'

class App < Sinatra::Base

   configure do
     enable :sessions
     set :session_secret, "item"
   end

    get '/' do
      erb :index
    end

    post '/checkout' do
      @session = params[:item]

      erb :checkout
    end

end
