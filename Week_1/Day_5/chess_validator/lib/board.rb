require_relative("rook.rb")
require_relative("king.rb")
require_relative("knight.rb")
require_relative("bishop.rb")
require_relative("queen.rb")
require_relative("pawn.rb")

require_relative("chesspiece.rb") 

class Board 

	def initialize
		@chess = [nil,[],[],[],[],[],[],[],[]]
	end

	def add_chess_piece(chess_piece)
		@chess[chess_piece.starting_x][chess_piece.starting_y] = chess_piece
	end 

	def board_can_move?(starting_x, starting_y, ending_x, ending_y)
		
# check if there's a piece:
		if @chess[starting_x][starting_y] == nil 

			puts "There is no chess piece at #{starting_x}, #{starting_y}."

		elsif ending_x == starting_x && ending_y == starting_y
			
			puts "The piece is not changing positions. Please enter a new destination."

		elsif ending_x >= 9 || ending_y >= 9
				
			puts "You're trying to move the piece off the board. Please enter a new destination."	

		elsif (ending_x < 9 || ending_y < 9) && (@chess[starting_x][starting_y].can_move?(ending_x, ending_y)) 
					
			puts "The piece can move from #{starting_x}, #{starting_y} to #{ending_x}, #{ending_y}."

		elsif   

			puts "The piece cannot move there." 

		end		
	end		
end

# check to see if the move stays within the board's bundaries: 
			
# check if the piece is actually trying to move: 
				
# call that piece's .can_move? method:
				


# bonus: move the piece


