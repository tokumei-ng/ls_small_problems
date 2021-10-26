# match_parentheses.rb

def balanced?(str)
  bracket_stack = []
  str.chars.each do |c|
    if c == '('
      bracket_stack << c
    elsif c == ')'
      if bracket_stack.empty?
        return false
      end
      bracket_stack.pop
    end
  end
  return bracket_stack.empty?
end

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false

# Further Exploration Bonus
# Expanding for curly braces, square brackets, and quotations
# would require adding additional stacks and/or counters for each
# individual pair.
