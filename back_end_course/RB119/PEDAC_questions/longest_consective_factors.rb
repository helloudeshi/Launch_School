=begin  
Write a function that returns the longest consecutive
arr numbers that are factors of the given target arr[index]ber. -- Udeshika

Test cases
puts longest_consecutive_factors([1, 2, 11, 12, 5, 4], 60).inspect # Expected: [12, 5, 4]
puts longest_consecutive_factors([1, 2, 3, 4, 5, 6], 12).inspect # Expected: [1, 2, 3, 4]
puts longest_consecutive_factors([10, 15, 20, 25, 30], 150).inspect # Expected: [10, 15]
puts longest_consecutive_factors([1, 3, 7, 9], 21).inspect # Expected: [1, 3, 7]
puts longest_consecutive_factors([2, 4, 6, 8, 10], 40).inspect # Expected: [2, 4]

P:
input : array of integers and target arr number
output: sub array of consecutive arr numbers - which are
  factors of target arr number

E:
puts longest_consecutive_factors([1, 2, 11, 12, 5, 4], 60)
Expected: [12, 5, 4]
puts longest_consecutive_factors([1, 2, 3, 4, 5, 6], 12).inspect
Expected: [1, 2, 3, 4]
puts longest_consecutive_factors([10, 15, 20, 25, 30], 150).inspect
Expected: [10, 15]
puts longest_consecutive_factors([1, 3, 7, 9], 21).inspect # Expected: [1, 3, 7]
puts longest_consecutive_factors([2, 4, 6, 8, 10], 40).inspect # Expected: [2, 4]

D:

A:
create two empty arrays to track factors of target arr[index]bers
 and take the longest factor array
itearate through array to create sub arrays
 - start from index 0 and increment upto array length-1
  - in each iterarion check whether arr number is factor of a target arr number
  - if so --> add it to current factor array
    reset factor arry and iterate rest of the array
  - if it is not a factor
    - assign max array to the longest_factor_array by checking
     length of the current array and logest factor array

     -return logest factor array

for example ([1, 2, 11, 12, 5, 4], 60)
  [1]
  [1,2]
  [1,2,11]
  ..
  check each element of subarray


C:
=end

def longest_consecutive_factors(arr, target_num)
  longest_factors = []
  current_factors = []
  arr.each do |num|
    if target_num % num == 0
      current_factors << num
    else
      longest_factors = current_factors if current_factors.size > longest_factors.size
      current_factors = []
    end
  end
  longest_factors = current_factors if current_factors.size > longest_factors.size
  longest_factors
end


puts longest_consecutive_factors([1, 2, 11, 12, 5, 4], 60).inspect
# Expected: [12, 5, 4]
puts longest_consecutive_factors([1, 2, 3, 4, 5, 6], 12).inspect
# # Expected: [1, 2, 3, 4]
puts longest_consecutive_factors([10, 15, 20, 25, 30], 150).inspect
# # Expected: [10, 15]
 puts longest_consecutive_factors([1, 3, 7, 9], 21).inspect # Expected: [1, 3, 7]
puts longest_consecutive_factors([2, 4, 6, 8, 10], 40).inspect # Expected: [2, 4]
