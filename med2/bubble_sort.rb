# bubble_sort.rb

def bubble_sort!(arr)
  sorted = false
  loop do
    break if sorted
    arr.each_index do |idx|
      if idx != arr.count - 1
        if arr[idx] > arr[idx + 1]
          arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
        end
      end
    end
    sorted = true if arr.sort == arr
  end
end

array = [5, 3]
bubble_sort!(array)
puts array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
puts array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# Further Exploration Bonus

def bubble_sort!(arr)
  sorted = false
  n = arr.count
  loop do
    break if sorted
    1.upto(n - 1) do |i|
      arr[i], arr[i - 1] = arr[i - 1], arr[i] if arr[i - 1] > arr[i]
    end
    n -= 1
    sorted = true if n == 1
  end
end

array = [5, 3]
bubble_sort!(array)
puts array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
puts array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
