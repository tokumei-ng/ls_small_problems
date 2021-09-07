# odd_lists.rb

def oddities(arr)
  new_arr = []
  arr.each_with_index { |val, idx| new_arr << val if idx.even? }
  new_arr
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

# Further Exploration bonus
# Companion method that returns 2nd, 4th, 6th, etc.
def evenities(arr)
  new_arr = []
  arr.each_with_index { |val, idx| new_arr << val if idx.odd? }
  new_arr
end

# Other versions for the original problem
# This version compiles a list of all even indices and uses value_at to pull
# them from the original array.
def oddities_2(arr)
  indices = []
  0.step(arr.size - 1, 2) { |x| indices << x }
  arr.values_at(*indices)
end

puts oddities_2([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities_2([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities_2(['abc', 'def']) == ['abc']
puts oddities_2([123]) == [123]
puts oddities_2([]) == []

# This version uses the step function again, but uses a range from 0 to the
# array size (non-inclusive) to append to new_arr directly.
def oddities_3(arr)
  new_arr = []
  (0...arr.size).step(2) { |idx| new_arr << arr[idx] }
  new_arr
end

puts oddities_3([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities_3([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities_3(['abc', 'def']) == ['abc']
puts oddities_3([123]) == [123]
puts oddities_3([]) == []
