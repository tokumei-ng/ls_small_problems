# spin_me_around.rb

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

# No, the returned string will not be the same object as the one passed in.
# While reverse! is a mutating method, join is not, meaning that the final
# returned value is a new object from the one passed in.
