# uppercase_check.rb

def uppercase?(str)
  str == str.upcase
end

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true

# Further Exploration
# As an empty string cannot be uppercase, it would make more sense for the
# return value to be false as it's technically not uppercase.
