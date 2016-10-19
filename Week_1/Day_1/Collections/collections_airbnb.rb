class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]

#puts homes[0].name
##----------------------------------------

# # use the number variable as the position in the array:
# for pos in 0..100
# 	puts homes[pos].name
# end
##----------------------------------------

# # use the each method:
# homes.each do |hm|
# 	puts hm.name
# end
## ----------------------------------------

# # using parameters in blocks:
# hm = Home.new("Nizar's place", "San Juan", 2, 42)
# puts hm.name
## ----------------------------------------

# homes.each do |hm|
# 	puts hm.name
# end
## ----------------------------------------

puts ""

# homes.each do |hm|
# 	puts "#{hm.name} in #{hm.city}"
# 	puts "Price: $#{hm.price} a night"
# 	puts ""
# 	end
##----------------------------------------

# #create an array of cities:
# #using each: 
# cities = []
# homes.each do |hm|
# 	cities << (hm.city)
# end
# puts cities 

# #using map:
# #remember to assign the result to a new array (cities):
# cities = homes.map do |hm|
# 	hm.city
# end
# puts cities
##----------------------------------------

# #map the array of homes into an array of prices
# #use array of prices to get the average price
# prices = homes.map do |hm|
# 	hm.price
# end
# puts "Prices:"
# puts prices

# total_price = 0
# prices.each do |price|
# 	total_price += price
# end

# puts ""
# puts "Total Price:"
# puts total_price

# puts ""
# puts "Average Price:"
# puts (total_price.to_f / prices.size)
# puts ""
# ##----------------------------------------

# #average using each method: 
# total_capacities = 0.0

# homes.each do |hm|
#   total_capacities = total_capacities + hm.capacity
# end

# puts "The average capacity is:"
# puts total_capacities / homes.length
# ##----------------------------------------

# #it's better to find average using reduce method (takes an array and returns a single value):
# total_capacities = homes.reduce(0.0) do |sum, hm|
#   sum + hm.capacity
# end

# puts "The average capacity is:"
# puts total_capacities / homes.length
# puts ""

# #----------------------------------------

# total_price = homes.reduce(0.0) do |sum, hm|
# 	sum + hm.price
# end

# puts "The average price is:"
# puts total_price / homes.length
# puts ""

# #----------------------------------------

# #The each_with_index method is the same as each, 
# #except the block receives a second parameter: 
# #the item's array index. 
# #Use this when you need the index in addition to the item itself.

# homes.each_with_index do |hm, index|
#   puts "Home Number #{index + 1}: #{hm.name}"
# end
# puts ""
# #----------------------------------------

# #The select method is used to filter an array.
# #If the block returns false for an item, that item will be removed from the new array. 

# # Homes in San Juan
# san_juan_homes = homes.select do |hm|
#   # Keep hm only if its city is "San Juan"
#   hm.city == "San Juan"
# end

# # Homes with capacity 4 or more
# high_capacity_homes = homes.select do |hm|
#   # Keep hm only if its capacity is 4 or greater
#   hm.capacity >= 4
# end
# puts high_capacity_homes
# #----------------------------------------

# #The find retrieves a single item from the array that matches the condition specified in the block.
# home_41_dollars = homes.find do |hm|
#   # Is hm's price $41?
#   hm.price == 41
# end

# puts "The first home that costs $41 is:"
# puts home_41_dollars.name
# puts ""
# #----------------------------------------

# # sort method sorts items using <=> to compare lesser and greater
# # spaceship operator: <=>
# #returns one of three things:
# # -1 if the first value is less than the second
# # 0 if both values are equal
# # 1 if the first value is greater than the second

# puts "1 <=> 3 is:"
# puts 1 <=> 3
# # -1

# puts "5 <=> 5 is:"
# puts 5 <=> 5
# # 0

# puts "7 <=> 4 is:"
# puts 7 <=> 4
# # 1
# puts ""

# sorted = homes.sort do |home1, home2|
#   # Compare the two homes by their capacity
#   home1.capacity <=> home2.capacity
# end
# #----------------------------------------


