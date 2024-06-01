# Write a method that takes an Array of Integers between 0 and 19, and
# returns an Array of those Integers sorted
# based on the English words for each number:
#
# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]
#
# PEDAC
# P:
# input - array of integers 0-19
# output - soreted integer array based on english words
#
# E:
# [1,2,4]--> [one,two,four].sort --> [4,1,2]
#
# D:
# array
#
# Algo:
# -define global hash variable  including 1-19 integers as keys and its english word as values.
# {1=> 'one', 2=> 'two' ....}
# -take respective values to the given integer array and sort those values
# - return the respective keys
#
# =
# NUM_HASH = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine',
#              10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen',
#              17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen' }

# def convert_val_to_keys(arr)
#   keys_arr = []
#   arr.each do |ele|
#     NUM_HASH.each do |k, v|
#       keys_arr << k if ele == v
#     end
#   end
#   keys_arr
# end
# # p convert_val_to_keys(%w[one two])

# def alphabetic_number_sort(arr)
#   key_arr = []
#   arr.each do |ele|
#     key_arr << NUM_HASH[ele]
#   end
#   sorted_keys = key_arr.sort
#   convert_val_to_keys(sorted_keys)
# end


# p alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]
# p alphabetic_number_sort([2,8,10,13,5])
# p alphabetic_number_sort([1,2,4])

NUMBER_WORDS = %w(zero one two three four
  five six seven eight nine
  ten eleven twelve thirteen fourteen
  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
numbers.sort_by { |number| NUMBER_WORDS[number] }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
p alphabetic_number_sort([2,8,10,13,5])
p alphabetic_number_sort([1,2,4])