require "sinatra"
require_relative("../server.rb")


class Calculator

	def addition(first_number, second_number)
		first_number + second_number
	end	

	def subtraction(first_number, second_number)
		first_number - second_number
	end	

	def multiplication(first_number, second_number)
		first_number * second_number
	end	

	def division(first_number, second_number)
		first_number / second_number
	end	

end


post "/calculate_add" do
  operation = params[:addition]
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first + second
  "The addition of #{first} and #{second} is #{result}."
end


post "/calculate_subtract" do
  operation = params[:subtraction]
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first - second
  "The subtraction of #{first} and #{second} is #{result}."
end

post "/calculate_multiply" do
  operation = params[:multiplication]
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first * second
  "The multiplication of #{first} and #{second} is #{result}."
end

post "/calculate_divide" do
  operation = params[:division]
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first / second
  "The division of #{first} and #{second} is #{result}."
end

