# tip_calculator.rb

print "What is the bill? "
bill = gets.chomp.to_i

print "What is the tip percentage? "
tip = gets.chomp.to_i

tip_amt = bill * (tip / 100.00)
total = bill + tip_amt

puts "The tip is #{tip_amt}"
puts "The total is #{total}"

# Further Exploration bonus
puts "The tip is $%.2f" % [tip_amt]
puts "The total is $%.2f" % [total]
