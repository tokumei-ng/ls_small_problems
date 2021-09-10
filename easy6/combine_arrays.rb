# combine_arrays.rb

def merge(arr1, arr2)
  arr1.push(arr2).flatten.uniq
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# Further Exploration bonus
# My solution did not use the Array#| method. Instead, it pushes the second
# array into the first, flattens the resultant array, and then removes all of
# the duplicates using Array#uniq.
