# array_average.rb

def average(arr)
  (arr.sum / arr.size)
end

puts average([1, 6]) == 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# Further Exploration bonus
# The result is automatically a float if any of the operands are a float
def average(arr)
  ((arr.sum).to_f / arr.size)
end

puts average([1, 6])
puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])
