class WordChain
    
    def initialize(dictionary)
        @dictionary = dictionary
    end

    def find_chain(word1, word2)
       
puts word1

attempt = 0

	while word1 != word2 && attempt < word1.length

	       letter = 0
	       

	     while letter < word1.length + 1 
	       
	       	
	       	first_word = word1.clone
	       
	      

	       	if first_word[letter] == word2[letter]
	       		
	       		#do nothing
	       		else
	     		
	     			first_word[letter] = word2[letter]
	     			
	     				if @dictionary.exists?(first_word) 
	     				word1 = first_word
	     				puts word1
	     				end
	       	end

	       	letter += 1
	       end

	       	attempt += 1
	   end

					   if word1 != word2
					   			puts "Impossible!"

					   end

	    end
end



