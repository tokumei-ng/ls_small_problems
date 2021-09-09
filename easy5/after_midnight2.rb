# after_midnight.rb

def after_midnight(time_str)
  time_arr = time_str.split(":").map(&:to_i)
  (time_arr[0] * 60 + time_arr[1]) % 1440
end

def before_midnight(time_str)
  time_arr = time_str.split(":").map(&:to_i)
  ((23 - time_arr[0]) * 60 + (60 - time_arr[1])) % 1440
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0

# Further Exploration bonus
# It's possible to subtract Time objects in order to produce the number of
# seconds between them. All that's left is to convert the seconds to minutes.

def after_midnight(time_str)
  time_arr = time_str.split(":").map(&:to_i)
  a = Time.mktime(2021, 1, 1, time_arr[0], time_arr[1], 0)
  b = Time.mktime(2021, 1, 1, 0, 0, 0)
  ((a - b) / 60) % 1440
end

def before_midnight(time_str)
  time_arr = time_str.split(":").map(&:to_i)
  a = Time.mktime(2021, 1, 1, time_arr[0], time_arr[1], 0)
  b = Time.mktime(2021, 1, 2, 0, 0, 0)
  ((b - a) / 60) % 1440
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
