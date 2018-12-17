require 'sinatra/base'

class Messaging < Sinatra::Base

  get '/' do
    # 'Testing Messaging app infrastructure!'
    erb(:index)
  end

  post '/name' do
    @user_name = params[:user_name]
    erb(:name)
  end

run! if app_file == $0

end
