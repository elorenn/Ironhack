require_relative("room.rb") 

class Game
attr_accessor(:list_of_rooms)

	def initialize(list_of_rooms, current_position)
		@list_of_rooms = []
		#@current_position = current_position
		@current_position = 0
	end

	def add_room(room)
		@list_of_rooms <<(room)
		# write method here
	end

	# def exit(input)
	# 	if input == "exit"

	# 	#quit game
	# end

	def start_game
		pos = 0 

		while @current_position < list_of_rooms.length 
					puts "You are in #{@list_of_rooms[@current_position].description}. Which direction would you like to go (N, S, E, W)?"
					user_input = gets.chomp
					if user_input == "quit"
						break

					elsif
						user_input == @list_of_rooms[@current_position].exit 
						#pos += 1
						@current_position +=1
					elsif
						user_input == @list_of_rooms[@current_position].entry
						#pos -= 1 
						@current_position -=1
					elsif
						puts "There is no exit here."
					# unless  
					# 	pos >= 0 + (list_of_rooms.length) 
					# 	puts "You won!"	
					# end
					end

				

										
			# def enter_movement
			# 	#write method here
			# end

			# def game_over
			# 	#write method here
			# end
		end
	end
end