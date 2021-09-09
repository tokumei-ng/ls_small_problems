# after_midnight1.rb

def time_of_day(time)
  case time <=> 0
  when -1 then "%02d:%02d" % [23 - ((time.abs / 60) % 24) + (time % 60) / 60, time % 60]
  when +1 then "%02d:%02d" % [(time / 60) % 24, time % 60]
  else "00:00"
  end
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"

# Further Exploration bonus
# Problem 1
# My solution above already uses the modulus operator to calculate the hours
# and minutes for the correct result. When taking the modulus of a negative
# number, it will return the correct number of minutes (essentially 60 - (time.abs % 60)
# while still taking into account a number divisible by 60).

# Problem 2
# With the Date and Time classes, using strftime would automate converting the
# minutes (after converting to seconds first) into a 24-hour format.

def time_of_day(time)
  Time.at(time * 60).utc.strftime("%H:%M")
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"

# Problem 3
# This problem would only introduce one more argument (the day of the week)
# and would still be relatively simple to accomplish using Time. The below
# method will take the current weekday by default; in order to make it work with
# a given day, there would need to be some conversions done on a new day argument.

def calculate_new_date(time)
  Time.at(time * 60).utc.strftime("%A, %H:%M")
end

puts calculate_new_date(-4231)
