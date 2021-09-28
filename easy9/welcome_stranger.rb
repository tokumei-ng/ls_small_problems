# welcome_stranger.rb

def greetings(arr, hash)
  name = arr.join(' ')
  puts "=> Hello, #{name}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })

# Further Exploration
# Assign the interpolated strings to their own variables to shorten the line.
