# alpha_numbers.rb
NUMBERS_TO_WORDS = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
                    6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten",
                    11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen",
                    15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen",
                    19 => "nineteen", 0 => "zero"}


def alphabetic_number_sort(num_arr)
  word_arr = num_arr.map { |num| NUMBERS_TO_WORDS[num] }.sort!
  word_arr.map { |word| NUMBERS_TO_WORDS.key(word) }
end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# Further Exploration bonus
# Using sort_by! would mutate the original array permanently when that might
# not be what we want.
# Above solution already uses Enumerable#sort.
