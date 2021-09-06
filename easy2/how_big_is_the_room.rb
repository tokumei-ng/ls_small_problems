# how_big_is_the_room.rb

SQ_METER = 10.7639

puts "Enter a length in meters:"
length = gets.chomp.to_i

puts "Enter a width in meters:"
width = gets.chomp.to_i

area_m = length * width
area_ft = area_m * SQ_METER

puts "The area of the room is #{area_m} square meters (#{area_ft} square feet)"
