# next_feat.rb

def featured(num)
  start = num + 7 - (num % 7)
  featured = start
  loop do
    return featured if (featured.odd? && featured.digits.uniq.count == featured.digits.count)
    break if featured >= 9_999_999_999
    featured += 7
  end
  "There is no possible number that fulfills those requirements."
end

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987

puts featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
