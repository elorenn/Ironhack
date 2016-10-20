require_relative("word_counter.rb")


class Authenticator 
	def initialize(name, password)
		@name = name
		@password = password
	end
	def check_login 
		puts ""
		puts "Hello user. Please identify yourself."
		puts ""	

		puts "Username:"
			username_input = gets.chomp

		puts ""

		puts "Password:"
			password_input = gets.chomp

		if username_input == @name && password_input == @password
			puts ""
			puts "Access Granted"
			puts ""
			WordCounter.new.count_words
		else
			puts ""
			puts "Access Denied" 
		end
	end
end
