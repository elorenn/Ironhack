def word_sort(string)
	string = string.split(" ").sort do |a,b|
		a.downcase <=> b.downcase
	end
	p string
end

word_sort("help! i don't understand this at all.")