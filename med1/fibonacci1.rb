# fibonacci1.rb

def fibonacci(n)
  if n <= 0
    return 0
  elsif n == 1
    return 1
  else
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end

puts fibonacci(1) == 1
puts fibonacci(2) == 1
puts fibonacci(3) == 2
puts fibonacci(4) == 3
puts fibonacci(5) == 5
puts fibonacci(12) == 144
puts fibonacci(20) == 6765

# Further Exploration Bonus
# This implementation of the Fibonacci Sequence doesn't take into account
# negative values. This can be alleviated by putting checks for when the numbers
# fall below 0.
