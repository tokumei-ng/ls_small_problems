# fibonacci_location.rb
# NOTE TO SELF: fib.last.digits.size is MUCH slower than using to_s.size

def find_fibonacci_index_by_length(num)
  fib = [1, 1]
  idx = 2
  while fib.last.to_s.size < num do
    fib << fib[-2] + fib[-1]
    idx += 1
  end
  idx
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
