class Queen
	attr_accessor(:starting_x, :starting_y, :color) 

	def initialize(starting_x, starting_y, color)
		@starting_x = starting_x
		@starting_y = starting_y
	end

	def can_move?(ending_x, ending_y)
		if 
			(@starting_y == ending_y || @starting_x == ending_x) || (@starting_x  - ending_x == @starting_y - ending_y || @starting_x  - ending_x == -(@starting_y - ending_y))

			return "true"
					
		else
			return "false"
		end
	end
end