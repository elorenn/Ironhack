require "sinatra"
require_relative("lib/calculator.rb")

#localhost:4567

get "/" do
  erb(:main_calculator)
end

post "/result" do
	calc = Calculator.new(params[:first_number], params[:second_number]) 

	if params[:operation] == "addition"
		
		@result = calc.addition
		"The addition of #{params[:first_number]} and #{params[:second_number]} is #{@result}."

	elsif params[:operation] == "subtraction"
				
		@result = calc.subtraction
		"The subtraction of #{params[:first_number]} and #{params[:second_number]} is #{@result}."

	elsif params[:operation] == "multiplication"
										
		@result = calc.multiplication
		"The multiplication of #{params[:first_number]} and #{params[:second_number]} is #{@result}."

	elsif params[:operation] == "division"
		
		@result = calc.division
		"The division of #{params[:first_number]} and #{params[:second_number]} is #{@result}."
	end

end




