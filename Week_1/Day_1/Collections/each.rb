=begin

#for x in 1..100
#	puts x
#end

heroes_array = ["Batman", "Green Lantern", "Superman", "The Flash", "Cyborg", "Wonder Woman", "Aquaman"]
# with a while loop (prone to errors):
# arrays do not have an "upcase" method - this method belongs to string, so:
puts ""
puts "DC Heroes with While Loop:"
i = 0
while i < heroes_array.length
	puts heroes_array[i].upcase
	i = i + 1
end
puts ""
puts ""

puts "DC Heroes with Each Loop:"
#with an each loop:
heroes_array.each do |hero_string|
	puts hero_string.upcase
	puts "Amount of characters: #{hero_string.length}"
	puts "-----"
end
puts ""

=end


classmates = ["Sarah", "Jay", "Ike"]
classmates.each do |classmate|
	puts "Good morning, #{classmate}!"
end


