# cute_angles.rb
DEGREE = "\xC2\xB0"

def dms(num)
  deg = num.truncate
  min = (num - deg) * 60
  sec = (min - min.truncate) * 60
  "%d#{DEGREE}%02d'%02d\"" % [deg, min, sec]
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00") # Floating point discrepancy here
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# Further Exploration bonus
def dms(num)
  deg = num.truncate % 360
  min = (num - num.truncate) * 60
  sec = (min - min.truncate) * 60
  "%d#{DEGREE}%02d'%02d\"" % [deg, min, sec]
end

puts dms(400) == %(40°00'00")
puts dms(-40) == %(320°00'00")
puts dms(-420) == %(300°00'00")
