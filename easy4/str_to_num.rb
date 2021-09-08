# str_to_num.rb

def string_to_integer(str)
  vals = str.chars.map { |char| char.ord - 48 }
  vals.reverse.each_with_index.inject(0) { |result, (num, idx)| result += num * 10**idx }
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570

# Further Exploration bonus
def hexadecimal_to_integer(hex_str)
  vals = hex_str.upcase.chars.map { |char| char.ord < 65 ? char.ord - 48 : char.ord - 55 }
  vals.reverse.each_with_index.inject(0) { |result, (num, idx)| result += num * 16**idx }
end

puts hexadecimal_to_integer('4D9f') == 19871
