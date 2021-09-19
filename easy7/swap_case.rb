# swap_case.rb

UPPER_LOWER_SET = Hash[('A'..'Z').to_a.zip(('a'..'z').to_a)]

def swapcase(str)
  new_str = ""
  str.chars do |ch|
    if UPPER_LOWER_SET.key?(ch)
      new_str << UPPER_LOWER_SET[ch]
    elsif UPPER_LOWER_SET.value?(ch)
      new_str << UPPER_LOWER_SET.key(ch)
    else
      new_str << ch
    end
  end
  new_str
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
