# abcs.rb

# BLOCKS = %w(B G V X R L D F Z C J N H).zip(%w(O T I K E Y Q S M P W A U))

def block_word?(str)
  available_blocks = %w(B G V X R L D F Z C J N H).zip(%w(O T I K E Y Q S M P W A U))

  str.chars.each do |c|
    previous_blocks = available_blocks.clone
    new_available = available_blocks.delete_if { |subarr| subarr.include?(c.upcase) }
    return false if new_available == previous_blocks
  end
  return true
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true

# Further Exploration Bonus
# In this solution, an array of arrays was used to pair the letters on each
# block together. Each letter in the string is iterated through and the blocks
# (subarrays) are deleted when a match is found with one of the letters.
# By keeping track of the block set before and after deletion, a comparison
# can be made to see if anything was removed. If no blocks were removed,
# then a matching letter was not found in the set, meaning the word cannot
# be created by the set of available blocks.
