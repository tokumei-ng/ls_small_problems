# how_old_is_teddy.rb

age = rand(20..200)

puts "Teddy is #{age} years old!"

# Further Exploration bonus
puts "Enter a name:"
name = gets.chomp
name = "Teddy" if name.strip == ""

puts "#{name} is #{age} years old!"
