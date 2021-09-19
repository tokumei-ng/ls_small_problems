# end_is_near.rb

def penultimate(str)
  str.split(' ')[-2]
end

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'

# Further Exploration Bonus
# Edge case 1: One or fewer words in the string
# Edge case 2: Sentence has an even number of words (which word is the middle?)

def middle_word(str)
  words = str.split(' ')
  if words.size == 0
    "There are no words in this sentence."
  elsif words.size == 1
    words[0]
  else
    # Defaults to whatever dividing by 2 will give
    middle = words.size / 2
    words[middle]
  end
end

puts middle_word("Two words")
puts middle_word("This is a sentence")
puts middle_word("This is a sentence too")
