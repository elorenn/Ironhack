require_relative("lib/string_calculator.rb")


the_calculator = StringCalculator.new

#p the_calculator.add("7,7")

p the_calculator.add("7,7") 
p the_calculator.add("8,4") 

p the_calculator.add("6") 
p the_calculator.add("3") 

p the_calculator.add("") 

# BONUS:
p the_calculator.add

# BONUS:
p the_calculator.add("7$7") 
p the_calculator.add("8$4") 

p the_calculator.add("8$4") 

p the_calculator.add("7,7,1,2") 
p the_calculator.add("7$7$1$2")

p the_calculator.add("7$7,1,2") 