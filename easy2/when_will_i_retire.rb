# when_will_i_retire.rb

print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
retire = gets.chomp.to_i

retire_yr = retire - age
now = Time.new.year
puts "It's #{now}. You will retire in #{now + retire_yr}."
puts "You have only #{retire_yr} years of work to go!"
