# odd.rb

def is_odd?(num)
  # No need to calculate the absolute value
  # A number will be even or odd regardless of
  # whether or not it's the positive or negative version
  # of itself.
  num % 2 == 1
end

puts "Using modulo"
puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)

# Below is the version that uses Integer#remainder instead of modulo
# As long as a value other than 0 is returned from dividing by 2 (mod or rem),
# the number isn't even
def is_odd?(num)
  num.remainder(2) != 0
end

puts "Using remainder:"
puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)
