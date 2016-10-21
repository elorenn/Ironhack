require_relative("lib/room.rb")
require_relative("lib/game.rb")

 

Room0 = Room.new("Room 0", "S", "N", "enemy")
Room1 = Room.new("Room 1", "S", "N", "enemy")
Room2 = Room.new("Room 2", "S", "N", "enemy")
Room3 = Room.new("Room 3", "S", "N", "enemy")
Room4 = Room.new("Room 4", "S", "N", "enemy")


game = Game.new(@list_of_rooms, @current_position)

game.add_room(Room0)
game.add_room(Room1)
game.add_room(Room2)
game.add_room(Room3)
game.add_room(Room4)

game.start_game


#add quicksand with timer