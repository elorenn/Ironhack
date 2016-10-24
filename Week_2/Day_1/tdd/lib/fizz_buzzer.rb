class FizzBuzzer

	def fizz_buzz(number)
		
		## prints the number: 

			# number.to_s

		## prints Fizz for numbers divisible by 3:

			# if number % 3 == 0
			# 	 "Fizz"
			# else
			# 	 number.to_s
			# end

		## prints Buzz for numbers divisible by 5:

			# if number % 3 == 0
			# 	 "Fizz"
			# elsif number % 5 == 0
			# 	"Buzz"	 	
			# else
			# 	 number.to_s
			# end
		
		## prints FizzBuzz for numbers divisible by both 3 and 5:

			if number % 3 == 0 && number % 5 == 0
				"FizzBuzz"
			elsif number % 3 == 0
				"Fizz"
			elsif number % 5 == 0
				"Buzz"	 	
			else
				 number.to_s
			end

	end	
end