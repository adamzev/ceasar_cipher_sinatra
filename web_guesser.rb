require 'sinatra'
require 'sinatra/reloader'
n = rand(101)
get '/' do
  
  "The secret number is #{n}"
end