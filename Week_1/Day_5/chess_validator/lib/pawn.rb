require_relative("chesspiece.rb") 

class Pawn < ChessPiece

	def can_move?(ending_x, ending_y)
		
		while 
			
			@color == "black" 

			if @starting_y == 7 && @starting_x == ending_x && @starting_y - ending_y == 2

				return "true"

			elsif 

				@starting_y != 7 && @starting_x == ending_x && @starting_y - ending_y == 1

				return "true"

			else

				return "false"
			end
		end

		while 
			
			@color == "white" 

			if @starting_y == 2 && @starting_x == ending_x && @starting_y - ending_y == -2

				return "true"

			elsif 

				@starting_y != 2 && @starting_x == ending_x && @starting_y - ending_y == -1

				return "true"

			else

				return "false"
			end
		end
	end
end