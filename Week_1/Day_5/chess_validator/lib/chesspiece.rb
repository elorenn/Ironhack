class ChessPiece
	attr_accessor(:starting_x, :starting_y, :color) 

	def initialize(starting_x, starting_y, color)
		@starting_x = starting_x
		@starting_y = starting_y
		@color = color
	end

end