require_relative("chesspiece.rb") 

class Queen < ChessPiece


# Simplify:
# Queen can be simpler if I create "diagonal movement" and "straight movement" modules that it can share with the other pieces.

	def can_move?(ending_x, ending_y)
		if 
			(@starting_y == ending_y || @starting_x == ending_x) || (@starting_x  - ending_x == @starting_y - ending_y || @starting_x  - ending_x == -(@starting_y - ending_y))

			return "true"
					
		else
			return "false"
		end
	end
end