number = 0
result = ""

while number <= 100

  number = number + 1

  string_number = number.to_s
  

  if string_number[0] == "1"
    result << "Bang"
  end

  if number % 3 == 0
      result << "Fizz"
  end


  if number % 5 == 0
      result << "Buzz"
  end
      
  if string_number[0] != "1" && number % 3 != 0 && number % 5 != 0
      result = number.to_s
  end

  puts result
  result = ""
 end

  