hash = {:wat => [0, 1, {:wut => [0, [[0, 1, 2, 3, 4, 5, 6, 7, 8, {:bbq => "Success!"}]]]}] }

puts ""

# reverse-engineer a data structure, so that it does this:
p hash[:wat][2][:wut][1][0][9][:bbq]

puts ""

arr = [[0, 1, 2, 3, 4, {:secret => {:unlock => [0, "Secret Unlocked!"]}}], 1]

# reverse-engineer a data structure, so that it does this:
p arr[0][5][:secret][:unlock][1]

puts ""
