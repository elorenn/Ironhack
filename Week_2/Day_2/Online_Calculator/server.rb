require "sinatra"
require_relative("lib/calculator.rb")

get "/" do
  erb(:main_calculator)
end

post "/result" do
	calc = Calculator.new(params[:first_number], params[:second_number]) 

	if params[:operation] == "addition"
		
		@result = calc.addition
		"The addition of #{@first_number} and #{@second_number} is #{@result}."

	elsif params[:operation] == "subtraction"
				
		@result = calc.subtraction
		"The subtraction of #{@first_number} and #{@second_number} is #{@result}."

	elsif params[:operation] == "multiplication"
										
		@result = calc.multiplication
		"The multiplication of #{@first_number} and #{@second_number} is #{@result}."

	elsif params[:operation] == "division"
		
		@result = calc.division
		"The division of #{@first_number} and #{@second_number} is #{@result}."
	end

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




