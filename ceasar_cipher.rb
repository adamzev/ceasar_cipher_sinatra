require 'sinatra'
require 'sinatra/reloader'
set :secret_number, rand(99)+1

get '/' do
  message = "Hello, World!"

  erb :index, :locals => {message: message}
end