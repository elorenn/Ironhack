require_relative("lib/chesspiece.rb") 

require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/knight.rb")
require_relative("lib/bishop.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")


# **********************************************************

# /---------------------------------------------------------
#  -------------- CHECKING INDIVIDUAL PIECES: --------------
#  ---------------------------------------------------------/

# **********************************************************

# /---------------------------------------------------------
#  ------------------------- ROOK --------------------------
#  ---------------------------------------------------------/

black_rook_left = Rook.new(1, 8, "black")
white_rook_right = Rook.new(8, 1, "white")

puts ""
puts "Valid Rook movements:"
puts "---------------------"

puts black_rook_left.can_move?(1, 5) 
puts black_rook_left.can_move?(5, 8) 
puts white_rook_right.can_move?(8, 3) 
puts white_rook_right.can_move?(2, 1) 

puts ""
puts "Invalid Rook movements:"
puts "-----------------------"

puts black_rook_left.can_move?(2, 7)
puts black_rook_left.can_move?(2, 5) 
puts white_rook_right.can_move?(3, 5)
puts white_rook_right.can_move?(5, 6) 

puts ""



# /---------------------------------------------------------
#  ------------------------- KING --------------------------
#  ---------------------------------------------------------/

black_king = King.new(5, 8, "black")
white_king = King.new(5, 1, "white")

puts ""
puts "Valid King movements:"
puts "--------------------"

puts black_king.can_move?(5, 7) 
puts black_king.can_move?(6, 7) 
puts white_king.can_move?(6, 2) 
puts white_king.can_move?(5, 2) 
puts white_king.can_move?(4, 1) 

puts ""
puts "Invalid King movements:"
puts "----------------------"

puts black_king.can_move?(5, 4) 
puts black_king.can_move?(7, 5) 
puts white_king.can_move?(7, 2) 
puts white_king.can_move?(1, 5) 
puts white_king.can_move?(1, 1) 

puts ""

# /---------------------------------------------------------
#  ------------------------- KNIGHT --------------------------
#  ---------------------------------------------------------/

black_knight_left = Knight.new(2, 8, "black")
white_knight_right = Knight.new(7, 1, "white")

puts ""
puts "Valid Knight movements:"
puts "-----------------------"

puts black_knight_left.can_move?(3, 6) 
puts black_knight_left.can_move?(4, 7) 
puts white_knight_right.can_move?(8, 3) 
puts white_knight_right.can_move?(5, 2) 

puts ""
puts "Invalid Knight movements:"
puts "-------------------------"

puts black_knight_left.can_move?(2, 7)
puts black_knight_left.can_move?(2, 5) 
puts white_knight_right.can_move?(3, 5)
puts white_knight_right.can_move?(5, 6) 

puts ""

# /---------------------------------------------------------
#  ------------------------- BISHOP --------------------------
#  ---------------------------------------------------------/

black_bishop_left = Bishop.new(3, 8, "black")
white_bishop_right = Bishop.new(6, 1, "white")

puts ""
puts "Valid Bishop movements:"
puts "---------------------"

puts black_bishop_left.can_move?(1, 6) 
puts black_bishop_left.can_move?(5, 6) 
puts white_bishop_right.can_move?(7, 2) 
puts white_bishop_right.can_move?(1, 6) 

puts ""
puts "Invalid Bishop movements:"
puts "-----------------------"

puts black_bishop_left.can_move?(2, 6)
puts black_bishop_left.can_move?(2, 5) 
puts white_bishop_right.can_move?(3, 5)
puts white_bishop_right.can_move?(5, 6) 

puts ""




# /---------------------------------------------------------
#  ------------------------- QUEEN --------------------------
#  ---------------------------------------------------------/

black_queen = Queen.new(4, 8, "black")
white_queen = Queen.new(4, 1, "white")

puts ""
puts "Valid Queen movements:"
puts "----------------------"

puts black_queen.can_move?(4, 4) 
puts black_queen.can_move?(2, 8)  
puts black_queen.can_move?(7, 8) 
puts black_queen.can_move?(1, 5)
puts black_queen.can_move?(6, 6)

puts white_queen.can_move?(4, 5)
puts white_queen.can_move?(1, 1) 
puts white_queen.can_move?(7, 1)
puts white_queen.can_move?(2, 3) 
puts white_queen.can_move?(8, 5) 

puts ""
puts "Invalid Queen movements:"
puts "------------------------"

puts black_queen.can_move?(6, 7)
puts black_queen.can_move?(2, 4) 
puts white_queen.can_move?(2, 2)
puts white_queen.can_move?(7, 6) 

puts ""

# /---------------------------------------------------------
#  ------------------------- PAWN --------------------------
#  ---------------------------------------------------------/

black_pawn_left1 = Pawn.new(1, 7, "black")
black_pawn_right = Pawn.new(7, 7, "black")
black_pawn_left2 = Pawn.new(3, 6, "black")

white_pawn_left = Pawn.new(2, 2, "white")
white_pawn_right1 = Pawn.new(6, 2, "white")
white_pawn_right2 = Pawn.new(5, 3, "white")

puts ""
puts "Valid Pawn movements:"
puts "---------------------"

puts black_pawn_left1.can_move?(1, 5) 
puts black_pawn_right.can_move?(7, 5) 
puts black_pawn_left2.can_move?(3, 5)

puts white_pawn_left.can_move?(2, 4)
puts white_pawn_right1.can_move?(6, 4) 
puts white_pawn_right2.can_move?(5, 4) 

puts ""
puts "Invalid Pawn movements:"
puts "-----------------------"

puts black_pawn_left1.can_move?(2, 6)
puts black_pawn_right.can_move?(6, 7) 
puts black_pawn_left2.can_move?(3, 4)

puts white_pawn_left.can_move?(1, 3)
puts white_pawn_right1.can_move?(6, 5)
puts white_pawn_right2.can_move?(5, 5) 

puts ""

