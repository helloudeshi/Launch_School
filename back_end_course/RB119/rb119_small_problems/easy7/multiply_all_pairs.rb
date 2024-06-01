# Write a method that takes two Array arguments
# in which each Array contains a list of numbers,
# and returns a new Array that contains the product of
# every pair of numbers that can be formed between the elements of the two Arrays.
# The results should be sorted by increasing value.
#
# You may assume that neither argument is an empty Array.
#
# p:
#
# E:
# multiply_all_pairs([2, 4], [4, 3, 1, 2])
# == [2, 4, 4, 6, 8, 8, 12, 16]
# --> [8,6,2,4,16,12,4,8]
#
# D:
#
# A:
#  -take each element in first array
#  - iterate through second array and multiply
#

def multiply_all_pairs(arr1, arr2)
  new_arr = []
  arr1.each do |ele1|
    arr2.each do |ele2|
      new_arr << ele1 * ele2
    end
  end
  new_arr.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
p multiply_all_pairs([1, 4, 3, 2], [5, 10])
