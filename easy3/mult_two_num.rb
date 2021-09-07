# mult_two_num.rb

def multiply(num1, num2)
  num1 * num2
end

puts multiply(5, 3) == 15

# Further Exploration bonus
# If the first argument is an Array, the collection of elements in the array
# are repeated and appended to the end of the array by the number the array is
# being multiplied by.

puts multiply([1, 2, 3, 4], 3) == [1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4]
puts multiply(["one", "two", "three", "four"], 2) == ["one", "two", "three", "four", "one", "two", "three", "four"]
