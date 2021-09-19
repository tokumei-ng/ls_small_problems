# capitalize_words.rb

def word_cap(str)
  str.split(' ').map(&:capitalize).join(' ')
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Further Exploration Bonus
# Solution 1 without String#capitalize
def word_cap(str)
  str.split(' ').map { |word| word[0].upcase + word[1..].downcase }.join(' ')
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Solution 2 without String#capitalize
UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a
UPPER_LOWER_SET = Hash[LOWERCASE.zip(UPPERCASE)]

def word_cap(str)
  str.split(' ').map do |word|
    new_word = word.downcase
    new_word[0] = UPPER_LOWER_SET[word[0]] if UPPER_LOWER_SET.key?(word[0])
    new_word
  end.join(' ')
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
