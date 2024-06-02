# Given a collection of integers, write a method to return a new collection of
# every unique contiguous subarray in that collection with an even sum.
# The returned subarrays can be in any order.
#
# even_subs([1, 1, 1, 1, 1]).sort == [[1, 1], [1, 1, 1, 1]]
# even_subs([1, 2, 3, 4, 5]).sort == [[1, 2, 3], [1, 2, 3, 4], [2], [2, 3, 4, 5], [3, 4, 5], [4]]
# even_subs([88, 54, 67, 56, 36]).sort == [[36], [54], [56], [56, 36], [88], [88, 54]]
#
# P:
# -input - array of integers
# - output  - subarray of unique subarray that return even sum only
# - should return all the subarrays that gives even sum by adding consecutive elements
# - in the result subarrays should be unique
#
# E:
# even_subs([1, 1, 1, 1, 1]).sort == [[1, 1], [1, 1, 1, 1]]
# ---> 1+1 -->2 --> [1,1] , then 1+1+1+= 4 --> [1,1,1,1] those two sub arrays return as output
# even_subs([1, 2, 3, 4, 5]).sort == [[1, 2, 3], [1, 2, 3, 4], [2], [2, 3, 4, 5], [3, 4, 5], [4]]
# ---> [1,2,3], [1,2,3,4],[2]....
# even_subs([88, 54, 67, 56, 36]).sort == [[36], [54], [56], [56, 36], [88], [88, 54]]
# ---> [88],[54], [56], [36], [88,54], [56,36]
#
# D:
#  - input - array
#  - output - array of sub arrays which are giving even sums with consecuitve elements
#
# A:
#
#  - Iterate thorough array to get all the possible sub array combinantions
#   [1, 2, 3, 4, 5]
#   1
#   1,2
#   1,2,3
#   1,2,3,4,5
#   2
#   2,3
#   2,3,4
# - iterate through the array and each element is going to be the
#     starting element of a set of subarrays(#each_with_index)
#        - for each element, itarate through the same array at the
#           index and upto array length
# - use sub_arr to get all possible combinations
# - check the sum of the elements of all sub arrays
#     select based on the sum of the array is even
# - take uniq even_sum array
#
# C:

def even_subs(arr)
  sub_arr = []

  arr.each_with_index do |_, idx|
    (idx..arr.length - 1).each do |index|
      sub_arr.push(arr.slice(idx..index))
    end
  end
  even_sum = sub_arr.select { |ary| ary.sum.even? }
  even_sum.uniq
end

p even_subs([1, 1, 1, 1, 1]).sort == [[1, 1], [1, 1, 1, 1]]
p even_subs([1, 2, 3, 4, 5]) == [[1, 2, 3], [1, 2, 3, 4], [2], [2, 3, 4, 5], [3, 4, 5], [4]]
p even_subs([88, 54, 67, 56, 36]).sort == [[36], [54], [56], [56, 36], [88], [88, 54]]
