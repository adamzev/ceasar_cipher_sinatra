require 'sinatra'
require 'sinatra/reloader'
set :secret_number, rand(99)+1

get '/' do
  guess = params['guess'].to_i
  feedback = check_guess(guess)
  # first matching case runs

  erb :index, :locals => {number: settings.secret_number, guess: guess, feedback: feedback}
end

def check_guess guess
  number = settings.secret_number
  if guess > (number + 5)
    return "Way too high!"
  elsif guess > number
    return "Too high!"
  elsif guess == number
    return "You got it!"
  elsif guess < (number - 5)
    return "Way too low!"
  elsif guess < number 
    return "Too low!"
  end
end