class WordChain
    
    def initialize(dictionary)
        @dictionary = dictionary
    end

    def find_chain(word1, word2)
       
puts "#{word1} --> #{word2}" 

attempt = 0

	while word1 != word2 && attempt < word1.length

	       letter = 0
	       

	     while letter < word1.length + 1 
	       
	       	
	       	word_clone = word1.clone
	       
	      

	       	if word_clone[letter] == word2[letter]
	       		
	       		#do nothing
	       		else
	     		
	     			word_clone[letter] = word2[letter]
	     			
	     				if @dictionary.exists?(word_clone) 
	     					word1 = word_clone
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



