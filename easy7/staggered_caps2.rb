# staggered_caps2.rb

def staggered_case(str)
  new_str = ""
  upper = true
  str.chars do |ch|
    if ch.match(/[^A-Za-z]/)
      new_str << ch
    else
      upper ? new_str << ch.upcase : new_str << ch.downcase
      upper = !upper
    end
  end
  new_str
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# Further Exploration Bonus
def staggered_case(str, skip=false)
  new_str = ""
  upper = true
  str.chars do |ch|
    if skip && ch.match(/[^A-Za-z]/)
      new_str << ch
    else
      upper ? new_str << ch.upcase : new_str << ch.downcase
      upper = !upper
    end
  end
  new_str
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('I Love Launch School!', true) == 'I lOvE lAuNcH sChOoL!'
