# exor.rb

def xor?(bool1, bool2)
  return (!!bool1 && !(!!bool2)) || (!(!!bool1) && !!bool2)
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false

# Additional tests for truthy/falsey values
puts xor?("string", "") == false # Empty strings aren't falsey either
puts xor?(0, 12) == false # Because 0 isn't considered a falsey value
puts xor?("string", 0) == false
puts xor?(nil, 0) == true
puts xor?(nil, true) == true
