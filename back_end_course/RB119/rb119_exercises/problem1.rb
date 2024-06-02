=begin   
Create a method that takes an array of numbers as an argument. For each number,
determine how many numbers in the array are smaller than it, and place the answer in an array.
Return the resulting array.

When counting numbers, only count unique values. That is, if a number occurs multiple times in the array,
it should only be counted once.

test cases
p smaller_numbers_than_current([8, 1, 2, 2, 3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([7, 7, 7, 7]) == [0, 0, 0, 0]
p smaller_numbers_than_current([6, 5, 4, 8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

my_array = [1, 4, 6, 8, 13, 2, 4, 5, 4]
result   = [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current(my_array) == result

P: input -array
   output - an array which is taken the count
    of integers in input array which are less than
    current number

E:
p smaller_numbers_than_current([8, 1, 2, 2, 3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([7, 7, 7, 7]) == [0, 0, 0, 0]
p smaller_numbers_than_current([6, 5, 4, 8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

my_array = [1, 4, 6, 8, 13, 2, 4, 5, 4]
result   = [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current(my_array) == result

D:

A:
- create an empty arry to store integers less than current num
- create an empty arry to get the count of unique numbers in previous array
- itearte through array and take current number
- check each elements in the array with the current number
 - if it is less than current num store in an array
  - unless go to next iteration
    after all iteartions get the unique numbers count to count array

  return count array as the result
=end 

def smaller_numbers_than_current(arr)
  smaller_numbers = []
  number_count = []
  arr.map do |number|
    smaller_numbers = (arr.select { |ele| ele < number })
    number_count << smaller_numbers.uniq.count
  end
  number_count
end

p smaller_numbers_than_current([8, 1, 2, 2, 3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([7, 7, 7, 7]) == [0, 0, 0, 0]
p smaller_numbers_than_current([6, 5, 4, 8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

my_array = [1, 4, 6, 8, 13, 2, 4, 5, 4]
result   = [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current(my_array) == result
