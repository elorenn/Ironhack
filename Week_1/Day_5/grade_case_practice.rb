print "Enter your grade: "
grade = gets.chomp
case grade
when "A"
  puts 'Well done!'
when "B"
  puts 'Try harder!'
when "C"
  puts 'You need help!!!'
when "D"
  puts "You're in danger!"
when "F"
  puts "You're failing." 	
else
  puts "You just making it up!"
end