require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        #"make sure it loads"
        erb :index
    end

    get '/new' do
        #"make sure it loads"
        erb :create_puppy
    end

    post '/puppy' do
        @puppy = Puppy.new(params[:name], params[:breed], params[:age])
        erb :display_puppy
    end
end
