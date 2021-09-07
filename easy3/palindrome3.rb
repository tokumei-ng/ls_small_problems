# palindrome3.rb

def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true


# Further Exploration bonus
# This method no longer works if a number begins with one or more zeroes because
# the number is converted into an octal with leading zeroes. If the number being
# evaluated is taken in as user input, then the input is automatically defaulted
# to being a string and would not pose a problem.

# In a situation where the number is hardcoded into the program (AKA set to a
# variable as an integer value with leading zeroes), the number of leading zeroes
# would need to be specified to append them with ljust or string formatting.
