# signed_num_to_str.rb

def integer_to_string(num)
  num.digits.reverse.map { |x| (x.ord + 48).chr }.join
end

def signed_integer_to_string(num)
  if num < 0
    "-" + integer_to_string(num * -1)
  elsif num > 0
    "+" + integer_to_string(num)
  else
    integer_to_string(num)
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'


# Further Exploration bonus
def signed_integer_to_string(num)
  convert = integer_to_string(num < 0 ? -num : num)
  case num <=> 0
  when -1 then "-#{convert}"
  when +1 then "+#{convert}"
  else "#{convert}"
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
