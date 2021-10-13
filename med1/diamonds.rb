# diamonds.rb

def star_line(star_num, tot_num)
  stars = "*" * (2 * star_num + 1)
  padding = " " * ((tot_num - stars.length) / 2)
  puts padding + stars + padding
end

def diamond(num)
  mid = (num / 2.0).ceil
  mid.times { |i| star_line(i, num) }
  (mid - 2).downto(0) { |i| star_line(i, num) }
end

diamond(1)
diamond(3)
diamond(9)

# Further Exploration Bonus
def star_line_2(star_num, tot_num)
  stars = "*" * (2 * star_num + 1)
  if(stars.length > 1)
    first_star = stars.index("*")
    last_star = stars.rindex("*")
    stars[first_star + 1, last_star - 1] = " " * (last_star - first_star - 1)
  end
  padding = " " * ((tot_num - stars.length) / 2)
  puts padding + stars + padding
end

def diamond_2(num)
  mid = (num / 2.0).ceil
  mid.times { |i| star_line_2(i, num) }
  (mid - 2).downto(0) { |i| star_line_2(i, num) }
end

diamond_2(9)
