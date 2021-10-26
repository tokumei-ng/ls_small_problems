# triangle_sides.rb

def triangle(side1, side2, side3)
  sides = [side1, side2, side3].sort
  return :invalid if sides.include?(0) || sides[0] + sides[1] <= sides[2]
  return :equilateral if sides.count(sides[0]) == 3
  return :isosceles if sides.count(sides[0]) == 2 || sides.count(sides[1]) == 2
  return :scalene
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid
