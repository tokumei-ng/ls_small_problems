# greeting_a_user.rb

print "What is your name? "
name = gets.chomp

puts name.include?("!") ? "HELLO #{name.upcase.chop}. WHY ARE WE SCREAMING?" : "Hello #{name}."

# Further Exploration bonus
print "What is your name? "
name = gets.chomp!

puts name.include?("!") ? "HELLO #{name.upcase.chop!}. WHY ARE WE SCREAMING?" : "Hello #{name}."
