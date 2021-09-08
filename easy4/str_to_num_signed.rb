# str_to_num_signed.rb

# From previous exercise
def string_to_integer(str)
  vals = str.chars.map { |char| char.ord - 48 }
  vals.reverse.each_with_index.inject(0) { |result, (num, idx)| result += num * 10**idx }
end

def string_to_signed_integer(str)
  sign = ["+", "-"].include?(str[0]) ? str[0] : nil
  if sign
    sign == "-" ? -string_to_integer(str[1..str.length]) : string_to_integer(str[1..str.length])
  else
    string_to_integer(str)
  end
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100

# Further Exploration bonus
def string_to_signed_integer(str)
  num = string_to_integer(["+", "-"].include?(str[0]) ? str[1..-1] : str)

  case str[0]
  when '-' then -num
  else num
  end
end

puts "Further Exploration results"
puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
