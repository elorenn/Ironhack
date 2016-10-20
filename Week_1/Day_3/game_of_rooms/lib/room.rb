class Room
	attr_accessor(:description,:entry,:exit)

	def initialize(description, entry, exit)
		@description = description
		@entry = entry
		@exit = exit
	end
end
