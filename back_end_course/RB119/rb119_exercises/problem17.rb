=begin   
 Create a method that takes an array of integers as an argument. 
 The method should determine the minimum integer value 
 that can be appended to the array so the sum of 
 all the elements equal the closest prime number 
 that is greater than the current sum of the numbers. 
 For example, the numbers in [1, 2, 3] sum to 6. 
 The nearest prime number greater than 6 is 7. 
 Thus, we can add 1 to the array to sum to 7.

Notes:

The array will always contain at least 2 integers. 
All values in the array must be positive (> 0). There may be multiple occurrences of the various numbers in the array.

p nearest_prime_sum([1, 2, 3]) == 1        # Nearest prime to 6 is 7
p nearest_prime_sum([5, 2]) == 4           # Nearest prime to 7 is 11
p nearest_prime_sum([1, 1, 1]) == 2        # Nearest prime to 3 is 5
p nearest_prime_sum([2, 12, 8, 4, 6]) == 5 # Nearest prime to 32 is 37

# Nearest prime to 163 is 167
p nearest_prime_sum([50, 39, 49, 6, 17, 2]) == 4 

Algo:
  - take the sum of the given array as arr_sum
  - then itearte over integers starting from arr_sum
   until it meet the nearest prime number 
    to determine whether the number is prime or not use 
    a sub method called is_prime?
  - then substract arr_sum from the nearest prime number and return the difference

=end

def nearest_prime_sum(array)
  arr_sum = array.sum
  nearest_prime_sum = 0
  count = arr_sum + 1
  loop do 
    nearest_prime_sum = count if is_prime?(count)
    break if is_prime?(count)

    count += 1
  end 
  nearest_prime_sum - arr_sum
end

def is_prime?(num)
  multiples = []
  (1..num).each do |int|
    multiples << int if num % int == 0
  end
  multiples.size == 2
end

p nearest_prime_sum([1, 2, 3]) == 1        # Nearest prime to 6 is 7
p nearest_prime_sum([5, 2]) == 4           # Nearest prime to 7 is 11
p nearest_prime_sum([1, 1, 1]) == 2        # Nearest prime to 3 is 5
p nearest_prime_sum([2, 12, 8, 4, 6]) == 5 # Nearest prime to 32 is 37

# Nearest prime to 163 is 167
p nearest_prime_sum([50, 39, 49, 6, 17, 2]) == 4 
