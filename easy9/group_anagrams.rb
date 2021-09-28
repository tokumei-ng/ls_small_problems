# group_anagrams.rb

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

def in_2d_array?(arr, value)
  arr.flatten.include?(value)
end

def get_anagrams(words)
  results = []
  current_word = ""

  loop do
    break if words.length == 0
    current_word = words.shift
    if(!in_2d_array?(results, current_word))
      anagrams = [current_word]

      words.each { |word| anagrams << word if word.chars.sort == current_word.chars.sort }

      results << anagrams
    end
  end
  results
end

p get_anagrams(words)
