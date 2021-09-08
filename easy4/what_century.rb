# what_century.rb

def convert_to_ordinal(num)
  if num > 10 && num.to_s[-2] == '1'
    num.to_s + 'th'
  else
    if num.to_s[-1] == '1'
      num.to_s + "st"
    elsif num.to_s[-1] == '2'
      num.to_s + 'nd'
    elsif num.to_s[-1] == '3'
      num.to_s + 'rd'
    else
      num.to_s + 'th'
    end
  end
end

def century(year)
  # Handle the years before a new century
  if year % 100 == 0
    convert_to_ordinal(year / 100)
  else
    # Handle every other year
    convert_to_ordinal((year / 100) + 1)
  end
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
