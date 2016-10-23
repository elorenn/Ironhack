require_relative("chesspiece.rb") 

class King < ChessPiece 

	def can_move?(ending_x, ending_y)
		if 
			(@starting_x == ending_x && ((ending_y == @starting_y + 1) || (ending_y == @starting_y - 1))) || (((ending_x == @starting_x + 1) || (ending_x == @starting_x - 1)) && starting_y == ending_y) || (((ending_x == @starting_x + 1) || (ending_x == @starting_x - 1)) && ((ending_y == @starting_y + 1) || (ending_y == @starting_y - 1)))

			return "true"
		else
			return "false"
		end
	end
end