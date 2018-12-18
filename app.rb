require 'sinatra/base'
require './lib/message'
require './lib/message_history'

class Messaging < Sinatra::Base
  enable :sessions

  get '/' do
    session[:message_history] = MessageHistory.new
    redirect '/display'
  end

  get '/display' do
    messages = session[:message_history]
    @list = messages.message_history
    erb(:index)
  end

  post '/index' do
    message = Message.new(params[:message])
    # session[:text] = message.text
    # session[:time] = message.time
    message_history = session[:message_history]
    message_history.add_message(message)
    redirect '/display'
  end

run! if app_file == $0

end
