def solve_cipher(input)
	letters = input.split("")
	a = []
	letters.each do |letter| 
		a << (letter.ord - 1).chr
	end 
	return a.join
end

puts solve_cipher("ifmmp")
	#should return "hello"