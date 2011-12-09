require 'sinatra'

set :public_folder, File.dirname(__FILE__) + '/static'
set :environment, :development
require "sinatra/reloader" if development?

get '/' do
  send_file File.join(settings.public_folder, 'index.html')
end
