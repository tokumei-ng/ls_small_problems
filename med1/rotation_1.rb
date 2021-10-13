# rotation_1.rb

def rotate_array(arr)
  arr[1..].push(arr[0])
end

puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]                 # => true

# Further Exploration Bonus
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

puts rotate_array_2([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array_2("Something") == "omethingS"
puts rotate_array_2(1234) == 2341
