# bannerizer.rb

def print_top_bot(len)
  # Takes length of a string and then returns the top/bottom of the box
  "+-" + ("-" * len) + "-+"
end

def print_in_box(str)
  puts print_top_bot(str.length)
  puts "| " + (" " * str.length) + " |"
  puts "| " + str + " |"
  puts "| " + (" " * str.length) + " |"
  puts print_top_bot(str.length)
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')


# Further Exploration bonus
# Method that truncates
WORD_WRAP_MAX = 76

def print_box_truncated(str)
  # Max is 76 to account for the 4 margin characters
  if str.length > WORD_WRAP_MAX
    puts print_top_bot(WORD_WRAP_MAX)
    puts "| " + (" " * WORD_WRAP_MAX) + " |"
    puts "| " + str[0...WORD_WRAP_MAX] + " |"
    puts "| " + (" " * WORD_WRAP_MAX) + " |"
    puts print_top_bot(WORD_WRAP_MAX)
  else
    print_in_box(str)
  end
end

print_box_truncated("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam aliquam augue aliquam nisl finibus convallis. Phasellus iaculis suscipit justo, a euismod nunc.")

# Method that wraps around
# The method needs to figure out how many lines to wrap around (if the max width
# is 80 characters, then every 76 characters, the text will wrap to the next line).
def print_wordwrap(str)
  wraps = (str.length / WORD_WRAP_MAX)
  if wraps == 0
    print_in_box(str)
  else
    start = 0 # Initialize string start point
    stop = WORD_WRAP_MAX # Initialize string end point
    puts print_top_bot(WORD_WRAP_MAX)
    puts "| " + (" " * WORD_WRAP_MAX) + " |"
    wraps.times do
      puts "| " + str[start...stop] + " |"
      start += WORD_WRAP_MAX
      stop += WORD_WRAP_MAX
    end
    # Get the last line if it has any characters in it
    puts "| " + str[start..] + (" " * (WORD_WRAP_MAX - str[start..].length)) + " |"
    puts "| " + (" " * WORD_WRAP_MAX) + " |"
    puts print_top_bot(WORD_WRAP_MAX)
  end
end

print_wordwrap("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam aliquam augue aliquam nisl finibus convallis. Phasellus iaculis suscipit justo, a euismod nunc. Nulla iaculis mollis orci, id sodales orci vestibulum eget. Aenean eu neque vitae leo mattis porta nec porta dui. Nullam dapibus mi eget finibus sodales.")
