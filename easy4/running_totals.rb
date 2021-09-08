# running_totals.rb

def running_total(arr)
  result_arr = []
  total = 0
  arr.each do |x|
    total += x
    result_arr << total
  end
  result_arr
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []

# Further Exploration bonus

def running_total(arr)
  total = 0
  arr.each_with_object([]) { |i, a| a << total += i }
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
