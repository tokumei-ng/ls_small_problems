# fizzbuzz.rb

def fizzbuzz(num1, num2)
  print_arr = []
  num1.upto(num2) do |x|
    add_str = ''
    if x % 3 == 0
      add_str << 'Fizz'
    end
    if x % 5 == 0
      add_str << 'Buzz'
    end
    if add_str == ''
      add_str << x.to_s
    end
    print_arr << add_str
  end
  puts print_arr.join(', ')
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
