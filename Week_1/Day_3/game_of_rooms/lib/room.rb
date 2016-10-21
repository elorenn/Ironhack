require_relative("game.rb") 


class Room
	attr_accessor(:description,:entry,:exit, :enemy)

	def initialize(description, entry, exit, enemy)
		@description = description
		@entry = entry
		@exit = exit
		@enemy = enemy
	end
end
