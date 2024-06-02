=begin   
Given a collection of integers, write a method to find the greatest
sum that can be obtained by adding consecutive even values or consecutive odd values.

consecutive_sum([1, 1, 1, 1, 1]) == 5
consecutive_sum([1, 2, 3, 4, 5]) == 5
consecutive_sum([88, 54, 67, 56, 36]) == 142

# p:
# input : array of integers
# output : integer (largest sum of consecutive even or odd numbers)
#
# E:
# consecutive_sum([1, 1, 1, 1, 1]) == 5
#  ---> all integers are odd --> sum of arr
# consecutive_sum([1, 2, 3, 4, 5]) == 5
# ---> no consecutive even or odd integers.. therfore max integer
# consecutive_sum([88, 54, 67, 56, 36]) == 142
# --> consecutive largest integers are [88,54]==142
#
# D:
#
# A:
# initialize - odd_arr_sum, even_arr_sum, largest_sum
# iterate through array
# if number is even
#   get increased even_arr_sum
#   set odd_arr_sum to 0
#   largest sum is the max of both largest_sum and even_arr_sum
# if consective integers are odd
#  get increased odd_arr_sum
#   set even_arr_sum to 0
#   largest sum is the max of both largest_sum and odd_arr_sum
#
# C:
=end 

def consecutive_sum(arr)
  even_arr_sum = 0
  odd_arr_sum = 0
  largest_sum = 0
  arr.each do |num|
    if num.even?
      even_arr_sum += num
      odd_arr_sum = 0
      largest_sum = [largest_sum, even_arr_sum].max
    else
      odd_arr_sum += num
      even_arr_sum = 0
      largest_sum = [largest_sum, odd_arr_sum].max
    end
  end
  largest_sum
end

p consecutive_sum([1, 1, 1, 1, 1])
p consecutive_sum([1, 2, 3, 4, 5])
p consecutive_sum([88, 54, 67, 56, 36]) == 142
p consecutive_sum([2, 10, 20, 3, 6, 100])
