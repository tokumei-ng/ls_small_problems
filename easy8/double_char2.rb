# double_char2.rb

def double_consonants(str)
  str.gsub(/[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]/) { |c| c * 2 }
end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""
