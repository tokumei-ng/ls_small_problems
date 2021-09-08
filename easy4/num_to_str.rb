# num_to_str.rb

def integer_to_string(num)
  num.digits.reverse.map { |x| (x.ord + 48).chr }.join
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
