require_relative("chesspiece.rb") 

class Bishop < ChessPiece
	
	def can_move?(ending_x, ending_y)
		if 
			@starting_x  - ending_x == @starting_y - ending_y || @starting_x  - ending_x == -(@starting_y - ending_y)

			return "true"
				
		else
			return "false"
		end
	end
end