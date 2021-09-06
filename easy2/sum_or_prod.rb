# sum_or_prod.rb

puts "Please enter an integer greater than 0:"
num = gets.chomp.to_i

puts "Enter 's' to computer the sum, 'p' to compute the product."
op = gets.chomp

operation = op.upcase == "S" ? "sum" : "product"
result = operation.upcase == "SUM" ? (1..num).reduce(:+) : (1..num).reduce(:*)

puts "The #{operation} of the integers between 1 and #{num} is #{result}."

# Further Exploration bonus
case operation.upcase
when "SUM"
  result = (1..num).inject { |sum, x| sum + x }
when "PRODUCT"
  result = (1..num).inject { |prod, x| prod * x }
else
  puts "That isn't a valid operator."
end

puts "The #{operation} of the integers between 1 and #{num} is #{result}."
