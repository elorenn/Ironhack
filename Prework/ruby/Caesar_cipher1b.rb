def solve_cipher(input)
	letters = input.split("")
	a = []
	letters.each do |letter| 
		if (letter.ord - 1) >= 97 && (letter.ord - 1) <= 122
		a << (letter.ord - 1).chr
	elsif (letter.ord - 1) < 97
		a << (letter.ord - 1 + 26).chr
	elsif (letter.ord - 1) > 122
		a << (letter.ord - 1 - 26).chr 
		end

	end 
	return a.join
end

puts solve_cipher("ajqmpd")
	#should return "ziploc"