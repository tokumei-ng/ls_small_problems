# grocery_list.rb

def buy_fruit(arr)
  arr.map { |entry| [entry[0]] * entry[1] }.flatten
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
