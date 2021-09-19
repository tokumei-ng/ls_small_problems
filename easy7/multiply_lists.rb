# multiply_lists.rb

def multiply_list(arr1, arr2)
  new_arr = []
  0.upto(arr1.length - 1) { |idx| new_arr << arr1[idx] * arr2[idx] }
  new_arr
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# Further Exploration Bonus
def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |a| a.reduce(:*) }
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
