# halvsies.rb

def halvsies(arr)
  arr.size.even? ? [].push(arr[0...(arr.size / 2)], arr[(arr.size / 2)..]) : [].push(arr[0..(arr.size / 2)], arr[((arr.size / 2) + 1)..])
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]

# Further Exploration bonus
# Dividing array.size by 2.0 will convert the resultant answer to a float.
# If we received an integer from the division, using ceil() would end up
# not doing anything.

# My solution ended up being the same (theoretically), but not as clean looking.
