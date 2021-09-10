# reversed_array1.rb

def reverse!(arr)
  return arr if arr.size <= 1
  midpoint = arr.size / 2
  left = 0
  right = -1
  loop do
    break if left >= midpoint
    arr[left], arr[right] = arr[right], arr[left]
    left += 1
    right -= 1
  end
  arr
end

list = [1,2,3,4]
result = reverse!(list)
puts result == [4, 3, 2, 1] # true
puts list == [4, 3, 2, 1] # true
puts list.object_id == result.object_id # true

list = %w(a b e d c)
puts reverse!(list) == ["c", "d", "e", "b", "a"] # true
puts list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
puts reverse!(list) == ["abc"] # true
puts list == ["abc"] # true

list = []
puts reverse!(list) == [] # true
puts list == [] # true
