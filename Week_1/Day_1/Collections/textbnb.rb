class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

def print_homes(homes)
  homes.each do |home|
    puts "#{home.name}, #{home.city}, #{home.capacity} rooms, $#{home.price}"
  end
end

homes = [
  Home.new("Nizar's place", "Miami", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Portland", 2, 45),
  Home.new("Ariel's place", "Portland", 4, 49),
  Home.new("Lorena's place", "Bangkok", 6, 49),
  Home.new("Alejandro's place", "Samana", 7, 50),
  Home.new("Lucy's place", "Miami", 3, 40),
  Home.new("Laura's place", "Portland", 2, 46),
  Home.new("Armando's place", "San Fransisco", 4, 51)
]

puts ""
puts "Homes:"
puts "------------"
homes.each do |hm|
  puts hm.name
 end
puts ""
puts "Sort by price or capacity?"
answer = gets.chomp
  if answer == "price"
    sorted_by_price = homes.sort do |home2, home1|
      home1.price <=> home2.price
    end
    puts ""
    print_homes(sorted_by_price) 

  elsif answer == "capacity"
    sorted_by_capacity = homes.sort do |home1, home2|
      home1.capacity <=> home2.capacity   
    end
    puts ""
    print_homes(sorted_by_capacity) 
  end
puts ""
puts ""
puts "Pick a city: "
answer = gets.chomp.capitalize!

picked_city = homes.select do |hm|
  hm.city == answer
end
puts ""
print_homes(picked_city)
puts ""

average_price = homes.reduce(0) do |sum, hm|
  sum + hm.price
end

puts "The average price is:"
puts "$#{average_price / homes.length},000"
puts ""

puts "Give me a price:"
answer = gets.chomp

picked_price = homes.find do |hm|
  hm.price == answer
end
puts ""
puts picked_price
puts ""

#try select instead of find
