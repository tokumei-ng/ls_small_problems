# square.rb
# From the previous exercise (mult_two_num.rb)
def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

puts square(5) == 25
puts square(-8) == 64

# Further Exploration bonus
# To turn the function into a "power of" function instead of squaring,
# we can call multiply as we have in square, but repeat it a number of
# times based on a second argument

def power(num, power)
  result = multiply(num, num)
  if (power - 2) > 0
    for i in (1..(power - 2))
      result = multiply(result, num)
    end
  end
  result
end

puts power(5, 3) == 125
puts power(2, 8) == 256
