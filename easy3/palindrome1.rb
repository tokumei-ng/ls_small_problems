# palindrome1.rb

# For palindromes, the left half and the right half must be the same (with the
# right half reversed). This rule will apply whether the sentence has an even
# or odd number of characters (simply leave the middle character alone for odd
# values)

def palindrome?(str)
  left = str[0...str.size/2]
  right = str.size.odd? ? str[(str.size/2)+1...str.size].reverse! : str[str.size/2...str.size].reverse!
  left == right
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

# Further Exploration bonus
# This version of the method doesn't differentiate between strings and arrays,
# only reverses whatever it is and checks to see if it's still the same
def palindrome?(obj)
  obj == obj.reverse
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false
puts palindrome?("madam i'm adam") == false
puts palindrome?('356653') == true
puts palindrome?([1, 2, 3, 3, 2, 1]) == true
puts palindrome?([1, 2, 3, 4, 5, 6]) == false
