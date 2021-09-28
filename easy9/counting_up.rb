# counting_up.rb

def sequence(num)
  (1..num).to_a
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]

# Further Exploration
# Under the assumption that sequence always lists numbers from least to
# greatest, sequence would count from the given negative number up to 0 (or
# -1 if 0 is not meant to be part of the sequence).

def sequence(num)
  num > 0 ? (1..num).to_a : (num..-1).to_a
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(-3) == [-3, -2, -1]
puts sequence(1) == [1]
