=begin     
The maximum sum subarray problem consists in finding
the maximum sum of contiguous subsequence in an array of integers

maxsequence[-2,1,-3,4,-1,2,1,-5,4]
shoud be 6-->[4,-1,2,1]
easy case - when the array is made up of only positive numbers
  and the maximum sum is the sum of the whole array.
  -If the array is made up only negative numbers return 0 instead
  - an empty array is consider to have zero greatest sum.

  test cases:
  p max_sequence([]) == 0
  p max_sequence([-2,1,-3,4,-1,2,1,-5,4]) == 6
  p max_sequence([11]) == 11
  p max_sequence([-32]) == 0
  p max_sequence([-2,1,-7,4,-10,2,1,5,4]) == 12

P:
Input - array of integers
output -maximum sum of consective integres

edge cases- if all the elements of the aaray
  is negative - return 0
  - if all the numbers are posive return sum of all

E:

D:

A:
initialize max_sum 
itearate through array - start_index -->(0..array.length-1 )
- create sub arrays -end_index (1..array.length)
- get sum of the sub arrays and assign it to current sum
- get the maximum of cuurent sum and max sum and reassign it to max sum
- return max_sum
-
=end

def max_sequence(arr)
  max_sum = 0
  (0..arr.length - 1).each do |start_index|
    (start_index..arr.length).each do |end_index|
      current_sum = arr.slice(start_index, end_index).sum
      max_sum = [current_sum, max_sum].max
    end
  end
  max_sum
end

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12
