# lettercase_counter.rb

def letter_case_count(str)
  case_hash = Hash.new(0)
  case_hash[:lowercase] = str.scan(/[a-z]/).length
  case_hash[:uppercase] = str.scan(/[A-Z]/).length
  case_hash[:neither] = str.scan(/[^A-Za-z]/).length
  case_hash
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
