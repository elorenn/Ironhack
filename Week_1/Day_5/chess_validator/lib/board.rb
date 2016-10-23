require_relative("rook.rb")
require_relative("king.rb")
require_relative("knight.rb")
require_relative("bishop.rb")
require_relative("queen.rb")
require_relative("pawn.rb")

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
