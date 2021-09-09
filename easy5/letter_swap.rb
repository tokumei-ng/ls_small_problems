# letter_swap.rb
def swap_letters(word)
  if word.length > 1
    temp = word[0]
    word[0] = word[-1]
    word[-1] = temp
    word
  else word
  end
end

def swap(str)
  flip = str.split(' ').map { |word| swap_letters(word) }.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
