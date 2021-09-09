# ascii_string_val.rb

def ascii_value(str)
  str.each_char.map(&:ord).reduce(0, :+)
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0

# Further Exploration bonus
# The mystery method is the chr() method, which converts an ordinal value to
# its corresponding character. When used with a longer string, ord() and chr()
# will only affect the first character in the string and ignore everything else.
