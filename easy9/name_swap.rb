# name_swap.rb

def swap_name(str)
  name = str.split
  "#{name[1]}, #{name[0]}"
end

puts swap_name('Joe Roberts') == 'Roberts, Joe'
