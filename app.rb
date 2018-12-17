require 'sinatra/base'

class Messaging < Sinatra::Base

  get '/' do
    'Testing Messaging app infrastructure!'
  end

run! if app_file == $0

end
