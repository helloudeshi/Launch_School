# Given an array of strings made only from lowercase letters,
# return an array of all characters that show in all
# string within the given array (including duplicates).
# For example, if a character occurs 3 times in all
# strings but not 4 times, you need to include that character
# 3 times in the final answer.
#
# test cases :
# common_chars(['bella','label', 'roller']) == ['e', 'l', 'l']
# common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
# common_chars(['hello', 'goodgye', 'booya', 'random']) == ['o']
# common_chars(['aaabbcc', 'ccddee', 'ggrr', 'yyzz']) == []
#
# P:
# - input - string array
# - output- array of common letters in each word
#
# E:
#
# D:
#
# Algo:
# - get the char count on each word
# - check key of 1st word to identify wether
#   its key included in other words
#   - if it is included in all words
#     print common letters
#

# def common_chars(word_array)
#   first_word_letters = word_array[0].chars

#   for i in (1..word_array.length - 1) do
#     common_letters = []
#     word_array[i].chars.select do |char|
#        if first_word_letters.include?(char)
#           common_letters << char
#           word_array[i].sub!(char, ' ')
#        end
#     end
#     first_word_letters = common_letters
#   end
#    common_letters.sort
# end

###second method

def common_chars(array)
 array1 = array.map {|word| word.dup}
 characters = array1.shift.chars
 characters.select do |char|
  array1.all? { |word| word.sub!(char, ' ')}
 end
end


arr = %w[bella label roller]
 p common_chars(arr) == %w[e l l]
 p arr
 p common_chars(['cool', 'lock', 'cook'])== ['c','o']
 p common_chars(['hello', 'goodgye', 'booya', 'random']) == ['o']
 p common_chars(['aaabbcc', 'ccddee', 'ggrr', 'yyzz']) == []
