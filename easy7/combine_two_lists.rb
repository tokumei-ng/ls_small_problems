# combine_two_lists.rb

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Further Exploration Bonus
# See above solution
