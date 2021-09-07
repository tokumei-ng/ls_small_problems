# palindrome2.rb

def real_palindrome?(str)
  str.gsub(/[^0-9A-Za-z]/, "").downcase == str.gsub(/[^0-9A-Za-z]/, "").downcase.reverse
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
