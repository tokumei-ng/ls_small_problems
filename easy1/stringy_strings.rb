# stringy_strings.rb

def stringy(count)
  str = ""
  for num in 0...count do
    str += (num.even? ? '1' : '0')
  end
  str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Further Exploration bonus

def stringy(count, rev=1)
  str = ""
  if(rev == 1)
    count.times do |num|
      str += (num.even? ? '1' : '0')
    end
  else
    count.times do |num|
      str += (num.even? ? '0' : '1')
    end
  end
  str
end

puts stringy(6) == '101010'
puts stringy(9, 0) == '010101010'
puts stringy(4, 0) == '0101'
puts stringy(7) == '1010101'
