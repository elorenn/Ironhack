def fizzbuzz2a

	numbers = *(1..100)
	numbers.each do |number|
		if number % 3 == 0 && number % 5 == 0
			puts "FizzBuzz"
		elsif number % 3 == 0
			puts "Fizz"
		elsif number % 5 == 0
			puts "Buzz"
		else
			puts number
		end
	end
end

fizzbuzz2a


		
				