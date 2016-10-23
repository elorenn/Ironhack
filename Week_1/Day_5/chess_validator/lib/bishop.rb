require_relative("chesspiece.rb") 

class Bishop < ChessPiece
	
	def can_move?(ending_x, ending_y)
		if 
			# @starting_x  - ending_x == @starting_y - ending_y || @starting_x  - ending_x == -(@starting_y - ending_y)

# so, if I use the .abs method, it gets rid of the need to specify - or + result, because it always returns +
			
			(@starting_x - ending_x).abs == (@starting_y - ending_y).abs 

			return "true"
				
		else
			return "false"
		end
	end
end