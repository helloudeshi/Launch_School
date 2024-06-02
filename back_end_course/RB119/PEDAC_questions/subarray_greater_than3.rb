=begin   
Given an array of numbers, return true if any 5 consecutive numbers are greater than 3.
If there are less than 5 numbers in the array, return true if all are greater than 3.

Test cases
puts check_consecutive_numbers([4, 5, 6, 7, 8]) # true
puts check_consecutive_numbers([2, 4, 5, 6, 7, 8]) # true
puts check_consecutive_numbers([1, 2, 3, 4, 5]) # false
puts check_consecutive_numbers([4, 4]) # true (less than 5 numbers, all greater than 3)
puts check_consecutive_numbers([2, 2]) # false (less than 5 numbers, not all greater than 3)

P:
input - integer array
output - boolean true or false
 conditions - true if 5 consecutive numbers are greater than 3

Algo :
- itearte through array
 -take consecutive intger sub arryas of size 5 or greater
 - check all the elements of sub array is greater than 3  - all? method can be used

=end 

def greater_than_3(arr)
  arr.all? { |num| num > 3 }
end

def check_consecutive_numbers(arr)
  return greater_than_3(arr) if arr.size < 5

  # end_indx = arr.size - 5
  (0..arr.size-5).each do |indx| # to get size 5 array we have to itarate upto (arr.size-5 )/ take 2 pair arrays iterate upto (arr.size-2)
    sub_arr = arr.slice(indx, 5)
    return true if greater_than_3(sub_arr)
  end
  false
end

puts check_consecutive_numbers([4, 5, 6, 7, 8]) # true
puts check_consecutive_numbers([2, 4, 5, 6, 7, 8]) # true
puts check_consecutive_numbers([1, 2, 3, 4, 5]) # false
puts check_consecutive_numbers([4, 4]) # true (less than 5 numbers, all greater than 3)
puts check_consecutive_numbers([2, 2]) # false (less than 5 numbers, not all greater than 3)
