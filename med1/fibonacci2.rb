# fibonacci2.rb

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

puts fibonacci(20) == 6765
puts fibonacci(100) == 354224848179261915075
puts fibonacci(100_001) # => 4202692702.....8285979669707537501
