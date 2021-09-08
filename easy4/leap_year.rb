# leap_year.rb

def leap_year?(year)
  (year % 4 == 0 && !(year % 100 == 0)) || (year % 100 == 0 && year % 400 == 0)
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true

# Further Exploration bonus
# Rewritten with the check for divisible by 100 first, it would fail on years
# that are divisible by 400 (2000, 2400, etc).

# Rewritten with the check for divisble by 4 first
def leap_year?(year)
  if year % 4 == 0
    year % 100 != 0
  end
  if year % 100 == 0
    year % 400 == 0
  else
    year % 4 == 0
  end
end

# The original solution is simpler as it doesn't rely on overriding any boolean
# values as necessary.

puts "Further Exploration values"
puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true
