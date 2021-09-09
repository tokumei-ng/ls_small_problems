# cleanup.rb

def cleanup(str)
  leading_space = str[0].match(/[^a-z]/) ? " " : ""
  trailing_space = str[-1].match(/[^a-z]/) ? " " : ""
  leading_space + str.gsub(/[^a-z]/, '*').split('*').reject(&:empty?).join(' ') + trailing_space
end

puts cleanup("---what's my +*& line?") == ' what s my line '
