# right_triangles.rb

def triangle(n)
  1.upto(n) { |idx| puts (" " * (n - idx)) + ("*" * idx) }
end

triangle(5)
triangle(9)

# Further Exploration bonus
def down_triangle(n)
  n.times { |idx| puts (" " * idx) + ("*" * (n - idx)) }
end

down_triangle(5)

# Further Exploration bonus part 2
# Corner is 0 (top left), 1 (top right), 2 (bottom left), 3 (bottom right)
def any_triangle(n, corner)
  case corner
  when 0
    n.times { |idx| puts ("*" * (n - idx)) + (" " * idx) }
  when 1
    n.times { |idx| puts (" " * idx) + ("*" * (n - idx)) }
  when 2
    1.upto(n) { |idx| puts ("*" * idx) + (" " * (n - idx)) }
  when 3
    1.upto(n) { |idx| puts (" " * (n - idx)) + ("*" * idx) }
  end
end

any_triangle(5, 0)
any_triangle(5, 1)
any_triangle(5, 2)
any_triangle(5, 3)
