# grade_book.rb

def get_grade(score1, score2, score3)
  avg = (score1 + score2 + score3) / 3.0
  case avg
  when 90..100 then 'A'
  when 80...90 then 'B'
  when 70...80 then 'C'
  when 60...70 then 'D'
  else 'F'
  end
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"

# Further Exploration
# The upper limit for the A range can be removed so that all numbers above
# 100 can be encompassed.
