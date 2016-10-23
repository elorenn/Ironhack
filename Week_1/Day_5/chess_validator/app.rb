require_relative("lib/chesspiece.rb") 

require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/knight.rb")
require_relative("lib/bishop.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")

require_relative("lib/board.rb")

black_rook_left = Rook.new(1, 8, "black")
black_knight_left = Knight.new(2, 8, "black")
black_bishop_left = Bishop.new(3, 8, "black")
black_queen = Queen.new(4, 8, "black")
black_king = King.new(5, 8, "black")
black_bishop_right = Bishop.new(6, 8, "black")
black_knight_right = Knight.new(7, 8, "black")
black_rook_right = Rook.new(8, 8, "black")
black_pawn_1 = Pawn.new(1, 7, "black")
black_pawn_2 = Pawn.new(2, 7, "black")
black_pawn_3 = Pawn.new(3, 7, "black")
black_pawn_4 = Pawn.new(4, 7, "black")
black_pawn_5 = Pawn.new(5, 7, "black")
black_pawn_6 = Pawn.new(6, 7, "black")
black_pawn_7 = Pawn.new(7, 7, "black")
black_pawn_8 = Pawn.new(8, 7, "black")


white_rook_left = Rook.new(1, 1, "white")
white_knight_left = Knight.new(2, 1, "white")
white_bishop_left = Bishop.new(3, 1, "white")
white_queen = Queen.new(4, 1, "white")
white_king = King.new(5, 1, "white")
white_bishop_right = Bishop.new(6, 1, "white")
white_knight_right = Knight.new(7, 1, "white")
white_rook_right = Rook.new(8, 1, "white")
white_pawn_1 = Pawn.new(1, 2, "white")
white_pawn_2 = Pawn.new(2, 2, "white")
white_pawn_3 = Pawn.new(3, 2, "white")
white_pawn_4 = Pawn.new(4, 2, "white")
white_pawn_5 = Pawn.new(5, 2, "white")
white_pawn_6 = Pawn.new(6, 2, "white")
white_pawn_7 = Pawn.new(7, 2, "white")
white_pawn_8 = Pawn.new(8, 2, "white")


my_board = Board.new 

my_board.add_chess_piece(black_rook_left)
my_board.add_chess_piece(black_knight_left)
my_board.add_chess_piece(black_bishop_left)
my_board.add_chess_piece(black_queen)
my_board.add_chess_piece(black_king)
my_board.add_chess_piece(black_bishop_right)
my_board.add_chess_piece(black_knight_right)
my_board.add_chess_piece(black_rook_right)
my_board.add_chess_piece(black_pawn_1)
my_board.add_chess_piece(black_pawn_2)
my_board.add_chess_piece(black_pawn_3)
my_board.add_chess_piece(black_pawn_4)
my_board.add_chess_piece(black_pawn_5)
my_board.add_chess_piece(black_pawn_6)
my_board.add_chess_piece(black_pawn_7)
my_board.add_chess_piece(black_pawn_8)

my_board.add_chess_piece(white_rook_left)
my_board.add_chess_piece(white_knight_left)
my_board.add_chess_piece(white_bishop_left)
my_board.add_chess_piece(white_queen)
my_board.add_chess_piece(white_king)
my_board.add_chess_piece(white_bishop_right)
my_board.add_chess_piece(white_knight_right)
my_board.add_chess_piece(white_rook_right)
my_board.add_chess_piece(white_pawn_1)
my_board.add_chess_piece(white_pawn_2)
my_board.add_chess_piece(white_pawn_3)
my_board.add_chess_piece(white_pawn_4)
my_board.add_chess_piece(white_pawn_5)
my_board.add_chess_piece(white_pawn_6)
my_board.add_chess_piece(white_pawn_7)
my_board.add_chess_piece(white_pawn_8)


#(starting_x, starting_y, ending_x, starting_y) 

puts ""
puts "Valid Movements:"
puts "---------------------"

#black: 
my_board.board_can_move?(1, 8, 1, 5)
my_board.board_can_move?(5, 8, 5, 7)
my_board.board_can_move?(2, 8, 3, 6)
my_board.board_can_move?(3, 8, 1, 6)
my_board.board_can_move?(4, 8, 4, 4)
my_board.board_can_move?(1, 7, 1, 5)

#white:
my_board.board_can_move?(8, 1, 8, 3)
my_board.board_can_move?(5, 1, 4, 1)
my_board.board_can_move?(7, 1, 8, 3)
my_board.board_can_move?(6, 1, 7, 2)
my_board.board_can_move?(4, 1, 7, 1)
my_board.board_can_move?(2, 2, 2, 4)


puts ""
puts "Invalid Movements:"
puts "-----------------------"

#black: 
my_board.board_can_move?(1, 8, 2, 7)
my_board.board_can_move?(5, 8, 5, 4)
my_board.board_can_move?(2, 8, 2, 7)
my_board.board_can_move?(3, 8, 2, 6)
my_board.board_can_move?(4, 8, 6, 7)
my_board.board_can_move?(1, 7, 2, 6)

#white:
my_board.board_can_move?(8, 1, 3, 5)
my_board.board_can_move?(5, 1, 7, 2)
my_board.board_can_move?(7, 1, 3, 5)
my_board.board_can_move?(6, 1, 3, 5)
my_board.board_can_move?(4, 1, 2, 2)
my_board.board_can_move?(2, 2, 1, 3)

puts ""

puts ""
puts "There is No Chess Piece:"
puts "-------------------------"

my_board.board_can_move?(3, 4, 3, 5)


puts ""
puts "Not Changing Positions:"
puts "-------------------------"

my_board.board_can_move?(8, 1, 8, 1)


puts ""
puts "Cannot Move There:"
puts "-------------------------"

my_board.board_can_move?(8, 1, 3, 5)


puts ""
puts "Trying to Move Off Board:"
puts "-------------------------"

my_board.board_can_move?(8, 1, 9, 2)
my_board.board_can_move?(8, 1, 0, 2)


puts ""

# **********************************************************

# /---------------------------------------------------------
#  -------------- CHECKING INDIVIDUAL PIECES: --------------
#  ---------------------------------------------------------/

# **********************************************************

# /---------------------------------------------------------
#  ------------------------- ROOK --------------------------
#  ---------------------------------------------------------/

# black_rook_left = Rook.new(1, 8, "black")
# white_rook_right = Rook.new(8, 1, "white")

# puts ""
# puts "Valid Rook movements:"
# puts "---------------------"

# puts black_rook_left.can_move?(1, 5) 
# puts black_rook_left.can_move?(5, 8) 
# puts white_rook_right.can_move?(8, 3) 
# puts white_rook_right.can_move?(2, 1) 

# puts ""
# puts "Invalid Rook movements:"
# puts "-----------------------"

# puts black_rook_left.can_move?(2, 7)
# puts black_rook_left.can_move?(2, 5) 
# puts white_rook_right.can_move?(3, 5)
# puts white_rook_right.can_move?(5, 6) 

# puts ""



# # /---------------------------------------------------------
# #  ------------------------- KING --------------------------
# #  ---------------------------------------------------------/

# black_king = King.new(5, 8, "black")
# white_king = King.new(5, 1, "white")

# puts ""
# puts "Valid King movements:"
# puts "--------------------"

# puts black_king.can_move?(5, 7) 
# puts black_king.can_move?(6, 7) 
# puts white_king.can_move?(6, 2) 
# puts white_king.can_move?(5, 2) 
# puts white_king.can_move?(4, 1) 

# puts ""
# puts "Invalid King movements:"
# puts "----------------------"

# puts black_king.can_move?(5, 4) 
# puts black_king.can_move?(7, 5) 
# puts white_king.can_move?(7, 2) 
# puts white_king.can_move?(1, 5) 
# puts white_king.can_move?(1, 1) 

# puts ""

# # /---------------------------------------------------------
# #  ------------------------- KNIGHT --------------------------
# #  ---------------------------------------------------------/

# black_knight_left = Knight.new(2, 8, "black")
# white_knight_right = Knight.new(7, 1, "white")

# puts ""
# puts "Valid Knight movements:"
# puts "-----------------------"

# puts black_knight_left.can_move?(3, 6) 
# puts black_knight_left.can_move?(4, 7) 
# puts white_knight_right.can_move?(8, 3) 
# puts white_knight_right.can_move?(5, 2) 

# puts ""
# puts "Invalid Knight movements:"
# puts "-------------------------"

# puts black_knight_left.can_move?(2, 7)
# puts black_knight_left.can_move?(2, 5) 
# puts white_knight_right.can_move?(3, 5)
# puts white_knight_right.can_move?(5, 6) 

# puts ""

# # /---------------------------------------------------------
# #  ------------------------- BISHOP --------------------------
# #  ---------------------------------------------------------/

# black_bishop_left = Bishop.new(3, 8, "black")
# white_bishop_right = Bishop.new(6, 1, "white")

# puts ""
# puts "Valid Bishop movements:"
# puts "---------------------"

# puts black_bishop_left.can_move?(1, 6) 
# puts black_bishop_left.can_move?(5, 6) 
# puts white_bishop_right.can_move?(7, 2) 
# puts white_bishop_right.can_move?(1, 6) 

# puts ""
# puts "Invalid Bishop movements:"
# puts "-----------------------"

# puts black_bishop_left.can_move?(2, 6)
# puts black_bishop_left.can_move?(2, 5) 
# puts white_bishop_right.can_move?(3, 5)
# puts white_bishop_right.can_move?(5, 6) 

# puts ""




# # /---------------------------------------------------------
# #  ------------------------- QUEEN --------------------------
# #  ---------------------------------------------------------/

# black_queen = Queen.new(4, 8, "black")
# white_queen = Queen.new(4, 1, "white")

# puts ""
# puts "Valid Queen movements:"
# puts "----------------------"

# puts black_queen.can_move?(4, 4) 
# puts black_queen.can_move?(2, 8)  
# puts black_queen.can_move?(7, 8) 
# puts black_queen.can_move?(1, 5)
# puts black_queen.can_move?(6, 6)

# puts white_queen.can_move?(4, 5)
# puts white_queen.can_move?(1, 1) 
# puts white_queen.can_move?(7, 1)
# puts white_queen.can_move?(2, 3) 
# puts white_queen.can_move?(8, 5) 

# puts ""
# puts "Invalid Queen movements:"
# puts "------------------------"

# puts black_queen.can_move?(6, 7)
# puts black_queen.can_move?(2, 4) 
# puts white_queen.can_move?(2, 2)
# puts white_queen.can_move?(7, 6) 

# puts ""

# # /---------------------------------------------------------
# #  ------------------------- PAWN --------------------------
# #  ---------------------------------------------------------/

# black_pawn_left1 = Pawn.new(1, 7, "black")
# black_pawn_right = Pawn.new(7, 7, "black")
# black_pawn_left2 = Pawn.new(3, 6, "black")

# white_pawn_left = Pawn.new(2, 2, "white")
# white_pawn_right1 = Pawn.new(6, 2, "white")
# white_pawn_right2 = Pawn.new(5, 3, "white")

# puts ""
# puts "Valid Pawn movements:"
# puts "---------------------"

# puts black_pawn_left1.can_move?(1, 5) 
# puts black_pawn_right.can_move?(7, 5) 
# puts black_pawn_left2.can_move?(3, 5)

# puts white_pawn_left.can_move?(2, 4)
# puts white_pawn_right1.can_move?(6, 4) 
# puts white_pawn_right2.can_move?(5, 4) 

# puts ""
# puts "Invalid Pawn movements:"
# puts "-----------------------"

# puts black_pawn_left1.can_move?(2, 6)
# puts black_pawn_right.can_move?(6, 7) 
# puts black_pawn_left2.can_move?(3, 4)

# puts white_pawn_left.can_move?(1, 3)
# puts white_pawn_right1.can_move?(6, 5)
# puts white_pawn_right2.can_move?(5, 5) 

# puts ""

