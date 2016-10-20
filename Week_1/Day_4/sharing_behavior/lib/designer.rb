require_relative("payable.rb")
require_relative("caffeine_consumer.rb")

class Designer 
	include Payable
	include CaffeineConsumer  

	def design_things
		consume_caffeine
		select_typography
		select_colors
		receive_salary
		#etc...
	end

	# def consume_caffeine
	# 	puts "Drinks a cold brew. Feels good about self."
	# end

	def select_typography
		puts "To Helvetica, or not to Helvetica?"
	end

	def select_colors
		puts "Stares at Pantone swatches. Waits for the color gods to decide."
	end
end


