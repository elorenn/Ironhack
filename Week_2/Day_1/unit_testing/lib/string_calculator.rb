class StringCalculator

	def add(numbers = "")

	# Create array of numbers from the string: 
		array_numbers = numbers.split(/(\d+)/).map { |n| n.to_i}

	# #Add those numbers:

	# array_numbers[0] + array_numbers[1]
	# #^this only works for the first two...

	sum = 0 
	array_numbers.each { |number| sum += number }
		sum

	end

end


# .split(/(\d+)/) means to split by each delimiter, i.e. "not digits" 

#A delimiter is a sequence of one or more characters 
# used to specify the boundary between separate, 
# independent regions in plain text or other data streams. 
# An example of a delimiter is the comma character, 
# which acts as a field delimiter 
# in a sequence of comma-separated values.