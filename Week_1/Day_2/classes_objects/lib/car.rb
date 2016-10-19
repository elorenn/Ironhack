class Car 
	def initialize(make, color, year, sound)
		@make = make
		@color = color
		@year = year
		@sound = sound
	end
	def start
		puts ""
		puts "#{@sound}!"
		puts ""
	end
	def self.blah #This is a class method (self.method) it acts on the class w/o having to call on an instance
		puts "blah blah"
	end
end



