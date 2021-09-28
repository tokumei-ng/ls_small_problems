# double_doubles.rb

def twice(num)
  num_str = num.to_s
  middle = num_str.length / 2
  num_str.length.even? && num_str[0...middle] == num_str[middle..] ? num : num * 2
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10
