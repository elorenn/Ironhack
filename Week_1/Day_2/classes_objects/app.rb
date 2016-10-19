# if class name has more than 1 word, use "class case" (no underscore)
# correct: class SuperUser
# incorrect: class superuser
# incorrect: class Super_User


require_relative("lib/user.rb") # link app.rb to user.rb
require_relative("lib/car.rb") # link app.rb to car.rb 


# first_user = User.new

# first_user.login
# first_user.greet

nizar = User.new("Nizar", "nizar@example.com", "30", "ambiguous", "cismale")
# when you call .new, you are calling the "initialize method" in user.rb

nizar.login # these will return error
nizar.greet # unless we modify the class User to receive 5 variables (initialize method)

jose = User.new("Jose", "jose@example.com", "36", "ambiguous", "cismale")

jose.login
jose.greet

first_car = Car.new("Ford", "red", "2001", "Broom")
second_car = Car.new("Toyota", "silver", "2010", "BROOOOM")

first_car.start
second_car.start

Car.blah #class method - prepend with "self."

puts ""

puts jose.name
puts jose.gender
puts jose.age

puts ""

puts jose.age = 25
jose.greet