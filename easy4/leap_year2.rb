# leap_year2.rb

def leap_year?(year)
  if year < 1752
    return (year % 4).zero?
  else
    return ((year % 4).zero? && !(year % 100).zero?) || (year % 400).zero?
  end
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
puts leap_year?(1700) == true
puts leap_year?(1) == false
puts leap_year?(100) == true
puts leap_year?(400) == true

# Vietnam has used the Gregorian calendar since 1954 but still observes the
# original Chinese calendar for holidays (such as Lunar New Years). It is also
# due to the two different calendars that Vietnamese people (and many other
# people of Asian heritage) will have two different dates for their birth date:
# one based on the Gregorian calendar and one based on the Lunar calendar.
