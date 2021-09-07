# arithmetic_integer.rb
operator = ["+", "-", "*", "/", "%", "**"]

puts "Enter the first number:"
num1 = gets.chomp.to_i

puts "Enter the second number:"
num2 = gets.chomp.to_i

operator.each do |op|
  puts "#{num1} #{op} #{num2} = #{num1.public_send(op, num2)}"
end

# puts "#{num1} + #{num2} = #{num1 + num2}"
# puts "#{num1} - #{num2} = #{num1 - num2}"
# puts "#{num1} * #{num2} = #{num1 * num2}"
# puts "#{num1} / #{num2} = #{num1 / num2}"
# puts "#{num1} % #{num2} = #{num1 % num2}"
# puts "#{num1} ** #{num2} = #{num1 ** num2}"
