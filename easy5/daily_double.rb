# daily_double.rb

def crunch(str)
  if str.length > 0
    new_str = str[0]
    str.each_char { |char| new_str += char if new_str[-1] != char }
    return new_str
  end
  str
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''

# Further Exploration bonus
# Iterating past the end of the string is to ensure that the final character
# is also included. Stopping at text.length would exclude that value.

# Above method uses String#each_char. Strings are already indexable like
# arrays, which would make using String#chars a bit redundant.

# Answer with RegExp
def crunch_regex(str)
  str.gsub(/(.)\1+/, "\\1")
end

puts crunch_regex('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch_regex('4444abcabccba') == '4abcabcba'
puts crunch_regex('ggggggggggggggg') == 'g'
puts crunch_regex('a') == 'a'
puts crunch_regex('') == ''
