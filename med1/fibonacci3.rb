# fibonacci3.rb

def fibonacci(n)
  fib_arr = [1, 1]
  if n == 0
    return 0
  elsif n == 1 || n == 2
    return 1
  else
    (n - 2).times { |_| fib_arr << fib_arr[-1] + fib_arr[-2] }
  end
  fib_arr.last
end

def fibonacci_last(n)
  fibonacci(n).to_s[-1].to_i
end

puts fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
puts fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
puts fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
puts fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# puts fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# puts fibonacci_last(123456789) # -> 4

# Further Exploration Bonus
# Uses the Golden Ratio to calculate the Fibonacci number
# GOLDEN_RATIO = 1.618034
#
# def fibonacci_last_fast(n)
#   fib = ((GOLDEN_RATIO)**n - (1 - GOLDEN_RATIO)**n) / Math.sqrt(5)
#   fib.to_i.to_s[-1].to_i
# end
# The above solution doesn't work for much larger values of n due to outputting
# Infinity when performing the power operation.

def fibonacci_last_fast(n)
  '011235831459437077415617853819099875279651673033695493257291'[n%60]
end

puts fibonacci_last_fast(1_000_007)
puts fibonacci_last_fast(123456789)

# Alternatively, matrix exponentation and fast doubling with Karatsuba
# multiplication could speed up calculation of Fibonacci numbers (though not
# as fast as the repetition approach for finding the last digit only)
