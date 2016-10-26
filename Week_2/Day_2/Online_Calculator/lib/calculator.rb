class Calculator
	attr_accessor(:result, :first_number, :second_number)

	def initialize(first_number, second_number)
		@first_number = first_number.to_f
		@second_number = second_number.to_f
 	
	end	
	def addition
		result = @first_number + @second_number
	end	

	def subtraction
		result = @first_number - @second_number
	end	

	def multiplication
		result = @first_number * @second_number
	end	

	def division
		result =@first_number / @second_number
	end	

end
