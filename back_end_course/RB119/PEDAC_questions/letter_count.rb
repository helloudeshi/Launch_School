# Write a method that takes a string with one or more space separated words
# and returns a hash that shows the number of words of different sizes.
#
# Words consist of any string of characters that do not include a space.
#
# Examples
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}
#
# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size.
# For instance, the length of "it's" is 3, not 4
#
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# word_sizes('') == {}
#
# P :
#  - input - string
#  - output - a hsh containing word size as keys and number of words in the string to match the size is value
#
# E:
# - word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
#
# - word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
#    number of words with word size 3 = 5,
# - word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
#    all punctuation marks considered as a character i.e word size of "what's" = 6
# - word_sizes('') == {}
#     empty string returns a empty hash
#
# D:
# string
# hash with key as integer and value as integer
#
# A:
# - separate each word from its space and put it in an array
# - get the word size by itarating through array
# - convert length array to hash using 'tally'
# - return hash
#

def word_sizes(sentence)
  word_arr = sentence.split.map { |word| word.delete(",;.!'-?") }
  length = word_arr.map(&:length) #{ |word| word.length }
  length.tally
end

# def word_sizes(sentence)
#   count = Hash.new(0) # count is a new hash {} this is to avoid to pass nil as 1st argument
#   new_arr = sentence.split.map { |word| word.delete(",;.!'-?") }
#   new_arr.each do |word|
#     count[word.size] += 1
#   end
#   count
# end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
