require_relative 'config/environment'

class App < Sinatra::Base

   configure do
     enable :sessions
     set :session_secret, "checkout"
   end

    get '/' do
      erb :index
    end

    post '/checkout' do
      @session = params[:item][:name]

      erb :checkout
    end

end
