require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/knight.rb")
require_relative("lib/bishop.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")

class Board 

	def initialize
		@chess = [nil,[],[],[],[],[],[],[],[]]
	end

	def add_chess_piece(chess_piece)
		@chess << (chess_piece) 
	end 

	def board_can_move?(starting_x, starting_y, ending_x, ending_y)

		# 1) check if there's a piece
		# 2) If the piece is there, call that piece's .can_move? method
		# 3) If the piece can move, check to see if the move stays within the board's bundaries.
		# 4) Check if the piece is actually trying to move (i.e. the destination is not the same as the origin)

		# optional bonus 5) make sure there is no piece already in the destination

	end


# optional bonus: move the piece

end
