# mutation.rb

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# The above code will output ["Moe", "Larry", "CURLY", "SHEMP", "Harpo", "CHICO",
# "Groucho", "Zeppo"]
# Explanation -> In the first iteration through array1 that appends values into
# array2, the reference to those values are moved into array2. When the original
# values in array1 are mutated, the corresponding values in array2 will be
# mutated as well.

# Further Exploration bonus
# If you're unaware of how values and references operate in Ruby, changing a
# value could affect another unwanted variable without the coder
# realizing it. To avoid this, understanding when and where Ruby will pass by
# reference or pass by value is essential. It also helps to always check to make
# sure all variables are outputting values as expected while coding.
