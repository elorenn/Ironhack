require_relative("rook.rb")
require_relative("king.rb")
require_relative("knight.rb")
require_relative("bishop.rb")
require_relative("queen.rb")
require_relative("pawn.rb")

require_relative("chesspiece.rb") 

class Board 

	def initialize
		@board = [nil,[],[],[],[],[],[],[],[]]
	end

	def add_chess_piece(chess_piece)
		@board[chess_piece.starting_x][chess_piece.starting_y] = chess_piece
	end 

	def board_can_move?(starting_x, starting_y, ending_x, ending_y)
		
# check if there's a piece:
		if @board[starting_x][starting_y] == nil 

			puts "There is no chess piece at #{starting_x}, #{starting_y}."

		elsif ending_x == starting_x && ending_y == starting_y
			
			puts "The piece is not changing positions. Please enter a new destination."

		elsif ending_x > 8 || ending_y > 8 || ending_x < 1 || ending_y < 1 
				
			puts "Position #{ending_x}, #{ending_y} is off the board. Please enter a new destination."	

		elsif #chess_piece.can_move?(ending_x, ending_y)
			 @board[starting_x][starting_y].can_move?(ending_x, ending_y)
					
			puts "The piece can move from #{starting_x}, #{starting_y} to #{ending_x}, #{ending_y}."

		else   

			puts "The piece cannot move there." 

		end		
	end		
end

# check to see if the move stays within the board's bundaries: 
			
# check if the piece is actually trying to move: 
				
# call that piece's .can_move? method:
				


# bonus: move the piece


