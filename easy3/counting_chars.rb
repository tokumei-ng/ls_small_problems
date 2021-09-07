# counting_chars.rb

print "Please write a word or words: "
user_in = gets.chomp

count = 0
split = user_in.split(" ")
split.each { |word| count += word.length }

puts "There are #{count} characters in '#{user_in}'."
