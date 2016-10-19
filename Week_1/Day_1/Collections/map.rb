#Map: returns an array that is the result of applying a block of code to each of the elements of that collection.
#map does not modify the original array, but creates a new array

=begin
added_one =[]

#each loop:
[1,2,3].each do |item|
	added_one << (item+1)
end
puts added_one
puts ""

#now lets do the same thing with .map:
added_one = [1,2,3].map do |item|
	item + 1
end
puts added_one
puts ""
=end

=begin
rescue Exception => e
	
end
#print each superhero in lowercase:
heroes_array = ["Batman", "Green Lantern", "Superman", "The Flash", "Cyborg", "Wonder Woman", "Aquaman"]



#with an each loop (must create new empty array for lowercase):
lowercase_array =[]
heroes_array.each do |x|
	lowercase_array.push( x.downcase )
end

puts lowercase_array
puts ""



# now with map loop (is easier to read)(pushes it into an new array for you):
lowercase_array = heroes_array.map do |x|
	x.downcase
end

lengths_array = heroes_array.map do |x|
	x.length
end

puts ""
puts "Original Array:"
puts "--------------"
puts heroes_array
puts ""
puts ""
puts "Lowercase Array:"
puts "----------"
puts lowercase_array
puts ""
puts ""
puts "Lengths Array:"
puts "--------"
puts lengths_array
puts ""
=end

cities = ["ub", "tampa", "memphis", "havana"]
capitalized_cities = cities.map do |city|
	city.capitalize 
end

puts ""
puts "Original Array:"
puts "--------------"
puts cities
puts ""
puts "Capitalized:"
puts "-------------"
puts capitalized_cities
puts ""


