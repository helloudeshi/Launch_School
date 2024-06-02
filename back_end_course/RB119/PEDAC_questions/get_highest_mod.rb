=begin    
Given a collection of integers, write a method to find the
highest possible value that can be obtained by taking the modulus of two elements (e.g., 11 % 3 = 2)

highest_mod([1, 1, 1, 1, 1]) == 0
highest_mod([1, 2, 3, 4, 5]) == 4
highest_mod([88, 54, 67, 56, 36]) == 67

P:
Input - array of integers
output - integer (highest possible modulus of two elements)

E:
highest_mod([1, 1, 1, 1, 1]) == 0
--> 1%1 --> 0
highest_mod([1, 2, 3, 4, 5]) == 4
--> 4%5 --> 4 --> (maximum numbers )
highest_mod([88, 54, 67, 56, 36]) == 67
---> 67%87 -> 67

D:
array

Algo:

- get the two highest numbers from the sorted array
- then take second largest number and maximum number
- then take the modular operator (second largest % largest number)
=end

def highest_mod(arr)
  sorted_arr = arr.sort.uniq
  return 0 if sorted_arr.size == 1

  sorted_arr[-2] % sorted_arr[-1]
end

p highest_mod([1, 1, 1, 1, 1]) == 0
p highest_mod([1, 2, 3, 4, 5]) == 4
p highest_mod([88, 54, 67, 56, 36, 88]) == 67
