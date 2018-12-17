require 'sinatra/base'

class Messaging < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/welcome_page' do
    @user_name = params[:user_name]
    erb(:welcome_page)
  end

  get '/add_messages' do
    erb(:add_messages)
  end

  post '/store_messages' do
    session[:message] = params[:message]
    redirect(:show_messages)
  end

  get '/show_messages' do
    @show_messages = session[:message]
    erb(:show_messages)
  end

run! if app_file == $0

end
