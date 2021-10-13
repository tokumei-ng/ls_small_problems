# rotation_2.rb
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

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917
