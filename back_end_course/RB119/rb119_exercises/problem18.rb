=begin   
Create a method that takes an array of integers as an argument. 
Determine and return the index N for which all numbers 
with an index less than N sum to the same value 
as the numbers with an index greater than N. 
If there is no index that would make this happen,
 return -1.

If you are given an array with multiple answers, 
return the index with the smallest value.

The sum of the numbers to the left of index 0 is 0.
 Likewise, the sum of the numbers to the 
 right of the last element is 0.

p equal_sum_index([1, 2, 4, 4, 2, 3, 2]) == 3
p equal_sum_index([7, 99, 51, -48, 0, 4]) == 1
p equal_sum_index([17, 20, 5, -60, 10, 25]) == 0

# The following test case could return 0 or 3. 
Since we're
# supposed to return the smallest correct index, 
the correct
# return value is 0.
p equal_sum_index([0, 20, 10, -60, 5, 25]) == 0

P:
input - array of integers
output - index N , where l.hand side sum == right hand side sum

Rules - if no index is there to fulfill above 
  retun -1
  - if there are multiple index, return smallest 


E:
p equal_sum_index([1, 2, 4, 4, 2, 3, 2]) == 3
--> [1+2+4] == [2+3+2] --> equal sum index is 3
p equal_sum_index([7, 99, 51, -48, 0, 4]) == 1
--> [7] == [51-48+0+4]
p equal_sum_index([17, 20, 5, -60, 10, 25]) == 0


D:

Algo:
    - itearte over array 
    - check left_sum and right sum with respect to 
    current index
    if those are eqaul reture current index 
      if there's no such index return -1 
=end

def equal_sum_index(array)
  left_sum = 0
  right_sum =0
  (0...array.size).each do |idx|
    left_sum = array[0...idx].sum
    right_sum = array[idx+1...array.size].sum
    return idx if left_sum == right_sum
  end
  -1
end

p equal_sum_index([1, 2, 4, 4, 2, 3, 2]) == 3
p equal_sum_index([7, 99, 51, -48, 0, 4]) == 1
p equal_sum_index([17, 20, 5, -60, 10, 25]) == 0
p equal_sum_index([0, 20, 10, -60, 5, 25]) == 0
p equal_sum_index([1,2,3,4]) == -1

