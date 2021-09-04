# reverse_it_2.rb

def reverse_words(str)
  str_arr = str.split.map { |word| word.length >= 5 ? word.reverse : word }
  str_arr.join(" ")
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')
