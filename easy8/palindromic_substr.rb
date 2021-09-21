# palindromic_substr.rb

# Methods from previous two exercises
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

def palindromes(str)
  all_substr = substrings(str)
  all_substr.select { |sub| sub.length >= 2 && sub == sub.reverse }
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

# Further Exploration Bonus
# To ignore case, downcase all of the letters
# To ignore non-alphanumerics, use gsub to replace all of them with blanks
def palindromes(str)
  all_substr = substrings(str)
  all_substr.select { |sub| sub.downcase.gsub(/[^a-z]/, '').length >= 2 && sub.downcase.gsub(/[^a-z]/, '') == sub.downcase.gsub(/[^a-z]/, '').reverse }
end

puts palindromes('hello-madam-did-madam-goodbye')
