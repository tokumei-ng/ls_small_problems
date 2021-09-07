# searching_101.rb

num_arr = []

6.times do |x|
  puts "Enter number \##{x + 1}:"
  num_arr.push(gets.chomp.to_i)
end

last_num = num_arr[-1]
puts num_arr[0..-2].include?(last_num) ? "The number #{last_num} appears in #{num_arr[0..-2]}." :
"The number #{last_num} does not appear in #{num_arr[0..-2]}."
