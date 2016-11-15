def solve_cipher(input, shift)
	letters = input.split("")
	a = []
	letters.each do |letter| 
		if (letter.ord + shift) >= 97 && (letter.ord + shift) <= 122
		a << (letter.ord + shift).chr
	elsif (letter.ord) == 32
			a << " "
	elsif (letter.ord + shift) < 97
		a << (letter.ord + shift + 26).chr
	elsif (letter.ord + shift) > 122
		a << (letter.ord + shift + 26).chr 
		end

	end 
	return a.join
end

puts solve_cipher("p| uhdo qdph lv grqdog gxfn", -3)

	#should return "my real name is donald duck"