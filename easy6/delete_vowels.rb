# delete_vowels.rb

def remove_vowels(str_arr)
  str_arr.map{ |word| word.gsub(/[aeiouAEIOU]/, '') }
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# Further Exploration bonus
# I used gsub and a regular expression to solve this problem, but briefly
# considered using String#delete too.
