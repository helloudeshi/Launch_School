=begin   
Create a method that takes an array of integers as an argument.
The method should return the minimum sum
of 5 consecutive numbers in the array.
If the array contains fewer than 5 elements,
the method should return nil.

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, -5]) == 9
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

P:
input-  array
output - min sum of 5 consecutive numbers

E:
p minimum_sum([1, 2, 3, 4]) == nil
-->array.size < 5
p minimum_sum([1, 2, 3, 4, 5, -5]) == 9
---> [2,3,4,5,-5]
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

D:

A:
- create min_suk variable
- iterate through array to take 5 consecutive integers
- take sum and check with min sum
- if it is min sum keep it and return
=end

def minimum_sum(arr)
  return nil if arr.size < 5

  min_arr = []
  arr.each_index do |i|
    next unless (arr.size - i) >= 5
    current_sum = arr.slice(i, 5).sum
    min_arr << current_sum
  end
  min_arr.min
end
p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, -5]) == 9
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10
