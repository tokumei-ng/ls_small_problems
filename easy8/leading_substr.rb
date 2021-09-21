# leading_substr.rb

def leading_substrings(str)
  substrs = []
  0.upto(str.length - 1) { |ch| substrs << str[0..ch] }
  substrs
end

puts leading_substrings('abc') == ['a', 'ab', 'abc']
puts leading_substrings('a') == ['a']
puts leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
