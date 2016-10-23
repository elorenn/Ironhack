require_relative("chesspiece.rb") 

class Rook < ChessPiece 
	
	def can_move?(ending_x, ending_y)
		if 
			@starting_y == ending_y || @starting_x == ending_x
			return "true"
		else
			return "false"
		end
	end
end