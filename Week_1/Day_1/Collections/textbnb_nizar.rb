#How Nizar did it: 

class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

def print_homes(homes_array)
  homes_array.each do |the_home|
    puts "#{the_home.name} in #{the_home.city}"
    puts "Price: $#{the_home.price}"
    puts "capacity: #{the_home.capacity}"
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
puts "Welcome to Textbnb."
puts "---------------------"
puts ""
puts "Book home from local hosts in 2+ countries."

#user input starts empty (nil = generic empty value)
#if you don't define user_input, you'll get an error in your "while" loop
user_input = nil

while user_input != "exit"
  puts ""
  puts "Enter [help] to see available commands or [exit] to exit:"
  puts "What is your selection?"
  user_input = gets.chomp
  puts ""
  if user_input == "help"
    puts "Available commands: "
    puts "[list] or [lowest] to see the list of homes (lowest price first)"
    puts "[highest] to see highest price first"
    puts "[capacity] to see highest capacity first"
    puts "[city]"
    puts "[name]"
  elsif user_input == "name"
    puts "Enter your desired price: "
    user_price = gets.chomp
    puts ""
    matched_home = homes.find { |the home| }
        


end










