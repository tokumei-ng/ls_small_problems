# rotation_3.rb

def rotate_array(arr)
  arr[1..].push(arr[0])
end

def rotate_array_2(value)
  if value.class == String
    str_arr = value.split('')
    rotate_array(str_arr).join('')
  elsif value.class == Integer
    rotate_array(value.digits.reverse).join.to_i
  else
    rotate_array(value)
  end
end

def rotate_rightmost_digits(num, digit)
  rotated = rotate_array_2(num.digits.reverse[-digit..-1])
  (num.to_s[0...-digit] + rotated.join).to_i
end

def max_rotation(num)
  result = num
  num.to_s.length.downto(1) { |x| result = rotate_rightmost_digits(result, x) }
  result
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845

# Further Exploration Bonus
# Without writing the previous two methods, the problem likely would have
# been solved in a similar manner (algorithm-wise). The helper methods
# make the problem easier as it breaks down the simple constituents that make
# up the larger problem.

# To solve the problem while preserving zeroes, leave the result as a string
# while it's being rotated and convert it into an integer at the end
def rotate_str(str)
  str[1..] + str[0]
end

def rotate_rightmost_digits_str(str, digit)
  rotated = rotate_str(str[-digit..-1])
  str[0...-digit] + rotated
end

def max_rotation_zeroes(num)
  result = num.to_s
  num.to_s.length.downto(1) { |x| result = rotate_rightmost_digits_str(result, x) }
  result.to_i
end

puts max_rotation_zeroes(1005) == 501
