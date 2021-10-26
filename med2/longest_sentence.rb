# longest_sentence.rb
DELIMITERS = ['.', '!', '?']

def get_longest_sentence(file)
  longest_sentence = ""
  word_count = 0

  file_txt = File.read(file).split(Regexp.union(DELIMITERS))
  file_txt.map! { |line| line.gsub(/\n/, ' ') }

  file_txt.each do |sentence|
    line_split = sentence.strip.split
    if(line_split.count > word_count)
      word_count = line_split.count
      longest_sentence = line_split.join(' ')
    end
  end

  puts "The longest sentence is: #{longest_sentence}"
  puts "Word count: #{word_count}"
end

get_longest_sentence("example.txt")
get_longest_sentence("pg84.txt")

# Further Exploration Bonus
# Finding the longest paragraph would be a similar problem, except paragraphs
# are delimited by the existence of a double newline ('\n\n'). Delimit the
# double newlines and count the characters in the remaining entries.

# Finding the longest word is a similar exercise in iterating through each
# available word in the file, either keeping track with a counter or using
# a built-in method.

# Maintaining the punctuation would be done without splitting at the
# punctuation. Iterate through each word until a punctuation is attached and
# then count all of it as a sentence.
