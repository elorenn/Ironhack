require "sinatra"
require_relative("../server.rb")


post "/calculate_add" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first + second
  "The addition of #{first} and #{second} is #{result}."
end


post "/calculate_subtract" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first - second
  "The subtraction of #{first} and #{second} is #{result}."
end

post "/calculate_multiply" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first * second
  "The multiplication of #{first} and #{second} is #{result}."
end

post "/calculate_divide" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first % second
  "The division of #{first} and #{second} is #{result}."
end