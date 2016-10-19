# Reduce transforms a collection into a single value, applying a block of code many times.
#takes an array and returns a single value, that has been accumulated from every item of the array 

heroes_array = ["Batman", "Green Lantern", "Superman", "The Flash", "Cyborg", "Wonder Woman", "Aquaman"]

total_lengths = 0

heroes_array.each do |x|
	total_lengths += x.length
	end
puts total_lengths.to_f / heroes_array.length
puts ""
# to float (number with decimal)
#________________________________________________

# now use reduce instead:
# make your reduce more clear by adding a starting point (0)
# (sum + x) has to stay at the end

heroes_array.reduce(0) do |sum, x|
	puts "Sum: #{sum}"
	puts "X: #{x}"
	puts "X length: #{x.length}"
	puts "Result this Round: #{sum + x.length}"
	puts "------------------------------"

	#sleep 2
	# this just means "wait two seconds" bwtn calculations - so we can see what's happening
	gets.chomp

	sum + x.length
end

puts ""
puts "Final Result: #{total_lengths}"
puts "Average: #{total_lengths.to_f / heroes_array.length}"

