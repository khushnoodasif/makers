def add_five(num)
   num + 5
end

puts add_five(4)
puts add_five(2132)

def subtract_low_from_high(num1, num2)
  nums = [num1, num2].sort
  return nums[1]-nums[0]
end

puts subtract_low_from_high(2, 3)
puts subtract_low_from_high(3, 2)
puts add_five(subtract_low_from_high(1463, 16475))
