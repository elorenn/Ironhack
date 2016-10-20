require_relative("payable.rb")
require_relative("caffeine_consumer.rb")

class Programmer 
	include Payable
	include CaffeineConsumer 

	def program
		consume_caffeine
		do_wonderful_things_with_computers
		receive_salary 
	end

	# def consume_caffeine
	# 	puts "Sips on a dark roast. Mmmmmmmm."
	# end

	def do_wonderful_things_with_computers
		puts "Types at light-speed. *Magic happens*"
	end

end