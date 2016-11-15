puts "Hello, world!"
puts "I "
print "cookies "
print "are "
print "good "
puts "too1 "
print "too2 "
#this is a comment
operation_result = 12 * 34
puts "Operation result is "
puts operation_result


puts "No one lives his life.
\nDisguised since childhood,
haphazardly assembled
from voices and fears and little pleasures,
we come of age as masks.
\nOur true face never speaks.
\nSomewhere there must be storehouses
where all these lives are laid away
like suits of armor or old carriages
or clothes hanging limply on the walls.
\nMaybe all paths lead there,
to the repository of unlived things."



puts 'Hello\nworld'
puts "Hello\nworld"


puts "Hello\"world"

puts "Hello\world"

puts "Hello\\world"

puts "Hello\aWorld"

puts "Hello\bworld"

puts "Hello\rworld"

puts "Hello\nworld"

puts "Hello\sworld"
puts "Hello\tWorld"

name = "Lorena"
puts "Hi #{name}"

puts "What's your name?"
name = gets.chomp
puts "Hello, #{name}."


puts "Give me a number"
first_number = gets.chomp.to_i
puts "Give me another number"
second_number = gets.chomp.to_i
puts "#{first_number} x #{second_number} = #{first_number * second_number}"


file_contents = IO.read("hello.rb")
puts "The source file contains: #{file_contents}"

puts "What's your name?"
name = gets.chomp
IO.write('name.txt',name)
