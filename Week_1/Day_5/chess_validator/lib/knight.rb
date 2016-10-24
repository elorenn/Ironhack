require_relative("chesspiece.rb") 

class Knight < ChessPiece
	
	def can_move?(ending_x, ending_y)

# Simplify: 
# Since we're constantly using this arithmetic, let's create a variable for it:
# change_x = (ending_x -@starting_x).abs
# change_x = (ending_x -@starting_x).abs

		if 
			((ending_x == @starting_x + 1 ) || (ending_x == @starting_x - 1 )) && ((ending_y == @starting_y + 2 ) || (ending_y == @starting_y - 2 ))
			
			return true

		elsif 
			
			((ending_x == @starting_x + 2 ) || (ending_x == @starting_x - 2 )) && ((ending_y == @starting_y + 1 ) || (ending_y == @starting_y - 1 ))
					
			return true
		else
			return false
		end
	end
end