# how_many.rb

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle',
            'motorcycle', 'car', 'truck']

def count_occurrences(arr)
  count_hash = Hash.new(0)
  arr.each { |elem| count_hash[elem] += 1 }

  # Print the values
  count_hash.each { |key, val| puts "#{key} => #{val}"}
end

puts "Regular exercise result"
count_occurrences(vehicles)

# Further Exploration bonus
# To make the words case insensitive, we can use upcase or downcase to
# standardize all of the words
def count_occurrences(arr)
  count_hash = Hash.new(0)
  arr.each { |elem| count_hash[elem.downcase] += 1 }

  # Print the values
  count_hash.each { |key, val| puts "#{key} => #{val}"}
end

# Re-define vehicles array with different cases
vehicles = ['car', 'Car', 'TRUCK', 'car', 'SUV', 'truck', 'motorcycle',
            'MoToRcYcLe', 'cAr', 'truck']

puts "Further Exploration result"
count_occurrences(vehicles)
