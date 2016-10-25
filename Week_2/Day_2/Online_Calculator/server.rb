require "sinatra"
require_relative("lib/calculator.rb")

get "/" do
  erb(:home)
end


get "/add" do
  erb(:add)
end

post "/calculate_add" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first + second
  "The addition of #{first} and #{second} is #{result}."
end



get "/subtract" do
  erb(:subtract)
end

post "/calculate_subtract" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first - second
  "The subtraction of #{first} and #{second} is #{result}."
end


get "/multiply" do
  erb(:multiply)
end

post "/calculate_multiply" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first * second
  "The multiplication of #{first} and #{second} is #{result}."
end


get "/divide" do
  erb(:divide)
end

post "/calculate_divide" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first % second
  "The division of #{first} and #{second} is #{result}."
end
