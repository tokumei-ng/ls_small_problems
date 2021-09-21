# double_char1.rb

def repeater(str)
  result = ''
  str.each_char { |ch| result << ch * 2 }
  result
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''
