require "sinatra"
require_relative("lib/calculator.rb")

get "/" do
  erb(:main_calculator)
end

post "/calculator" do
	calc = Calculator.new(params[:first_number], params[:second_number]) 

	if params[:operation] == "addition"
		
		calc.addition


	elsif params[:operation] == "subtraction"
				
		calc.subtraction
	
	elsif params[:operation] == "multiplication"
										
		calc.multiplication

	elsif params[:operation] == "division"
		
		calc.division

	end

	# operation = params[:addition]
	# first = params[:first_number].to_f
	# second = params[:second_number].to_f
	# result = first + second
	# "The addition of #{first} and #{second} is #{result}."
end


# post "/calculate_subtract" do
#   operation = params[:subtraction]
#   first = params[:first_number].to_f
#   second = params[:second_number].to_f
#   result = first - second
#   "The subtraction of #{first} and #{second} is #{result}."
# end

# post "/calculate_multiply" do
#   operation = params[:multiplication]
#   first = params[:first_number].to_f
#   second = params[:second_number].to_f
#   result = first * second
#   "The multiplication of #{first} and #{second} is #{result}."
# end

# post "/calculate_divide" do
#   operation = params[:division]
#   first = params[:first_number].to_f
#   second = params[:second_number].to_f
#   result = first / second
#   "The division of #{first} and #{second} is #{result}."
# end




