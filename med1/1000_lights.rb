# 1000_lights.rb

def get_on_lights(num_switches)
  switches = Array.new(num_switches, 0)
  1.upto(num_switches) do |i|
    switches.each_index do |idx|
      switches[idx] = 1 - switches[idx] if (idx + 1) % i == 0
    end
  end
  switches.each_index.select { |switch| switches[switch] == 1 }.map { |s| s += 1 }
end

puts get_on_lights(5) == [1, 4]
puts get_on_lights(10) == [1, 4, 9]
puts get_on_lights(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]

# Further Exploration Bonus
# 1. All Perfect Squares have an odd number of factors, which means that if all
#    switches are off by default (before the first pass), perfect square numbers
#    will always be in the opposite state at the end (1 if 0, 0 if 1).

# 2. Solution above already uses an Array instead of a Hash that considers each
#    switch as being in an on (1) or off (0) state, switching between them on
#    every pass.

# 3. Generate a string that will grab each value in the resultant array and
#    use string interpolation to insert it into a final puts statement.
