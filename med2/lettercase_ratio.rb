# lettercase_ratio.rb

def letter_percentages(str)
    result = { :lowercase => 0, :uppercase => 0, :neither => 0 }
    str.chars.each do |c|
      if /[a-z]/.match(c)
        result[:lowercase] += 1
      elsif /[A-Z]/.match(c)
        result[:uppercase] += 1
      else
        result[:neither] += 1
      end
    end
    result.each { |key, _| result[key] = ((result[key].to_f / str.length) * 100).round(1) }
end

puts letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
puts letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

# Further Exploration Bonus
puts letter_percentages('abcdefGHI') == { lowercase: 66.7, uppercase: 33.3, neither: 0.0 }
