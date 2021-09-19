# multiply_all_pairs.rb

def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map { |a| a.reduce(:*) }.sort
end


puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# Further Exploration Bonus
# Used the compact way of solving the problem.
