# 3_and_5.rb

def multisum(num)
  result = 0
  1.upto(num) { |x| result += x if (x % 3).zero? || (x % 5).zero? }
  result
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168

# Further Exploration bonus
# Assuming that the number given as an argument is exploded into an array of
# all of the numbers leading up to it (inclusive), the inject or reduce methods
# can make the summation of the numbers easier.

def multisum_inject(num)
  (1..num).inject(0) do |sum, x|
    sum += x if ((x % 3).zero? || (x % 5).zero?)
    sum
  end
end

puts "Further Exploration results"
puts multisum_inject(3) == 3
puts multisum_inject(5) == 8
puts multisum_inject(10) == 33
puts multisum_inject(1000) == 234168

# The version that uses inject/reduce is more succinct and isn't too much more
# difficult to read than (my) original solution (though it would be more difficult
# compared to the given solution in the exercise).
