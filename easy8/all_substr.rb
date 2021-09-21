# all_substr.rb

# leading_substrings() from previous exercise
def leading_substrings(str)
  substrs = []
  0.upto(str.length - 1) { |ch| substrs << str[0..ch] }
  substrs
end

def substrings(str)
  result = []
  0.upto(str.length - 1) { |ch| result << leading_substrings(str[ch..]) }
  result.flatten!
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
