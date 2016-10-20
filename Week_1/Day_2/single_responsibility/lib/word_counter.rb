class WordCounter
	def count_words
		puts "Please enter some text to count words:"
				text_input = gets.chomp
		number_of_words = text_input.scan(/\w+/).size
		#number_of_words = text_input.split(" ").length 	
		puts ""	
		puts "Your text has #{number_of_words} words."
		puts ""
	end
end




