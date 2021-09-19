# staggered_caps1.rb

def staggered_case(str)
  new_str = ""
  upper = true
  str.chars do |ch|
    upper ? new_str << ch.upcase : new_str << ch.downcase
    upper = !upper
  end
  new_str
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Further Exploration Bonus
def staggered_case(str, upper=true)
  new_str = ""
  up_bool = upper
  str.chars do |ch|
    upper ? new_str << ch.upcase : new_str << ch.downcase
    upper = !upper
  end
  new_str
end

puts staggered_case('I Love Launch School!', false) == 'i lOvE LaUnCh sChOoL!'
puts staggered_case('ALL_CAPS', false) == 'aLl_cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
