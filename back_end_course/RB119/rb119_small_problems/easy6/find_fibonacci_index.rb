# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...)
# such that the first 2 numbers are 1 by definition,
# and each subsequent number is the sum of the two previous numbers
#
# Write a method that calculates and returns the index of the
# first Fibonacci number that has the number of digits specified as an argument.
# (The first Fibonacci number has index 1.)
#
# P:
#
# E:
#
# D:
#
# A:
#
# def fibb(n)
#   return 1 if n <= 1

#   fibb(n - 1) + fibb(n - 2)
# end

# def fibonacci_sequence(num)
#   fibonacci = []
#   (0..num).each do |i|
#     fibonacci << fibb(i)
#   end
#   fibonacci.length
# end

# def find_fibonacci_index_by_length(num_digits)
#   index = 1
#   loop do
#     fibonacci_by_index = fibb(index)
#     index += 1
#     break if fibonacci_by_index.to_s.size >= num_digits
#   end
#   index
# end

### second method 

# def find_fibonacci_index_by_length(number_digits)
#   first = 1
#   second = 1
#   index = 2

#   loop do
#     index += 1
#     fibonacci = first + second
#     break if fibonacci.to_s.size >= number_digits
    

#     first = second
#     second = fibonacci
#   end
#   index
# end


### less time consuming method 


def find_fibonacci_index_by_length(digits)
  target_number = 10 ** (digits - 1)
  recent_nums = [1,1]
  idx = 2

  while recent_nums[1] < target_number
    num = recent_nums.reduce(:+)
    recent_nums.push(num).shift
    idx += 1
  end

  idx
end

p find_fibonacci_index_by_length(2) #== 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) #== 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(4)
p find_fibonacci_index_by_length(10) #== 45
p find_fibonacci_index_by_length(100) #== 476
p find_fibonacci_index_by_length(1000) #== 4782
p find_fibonacci_index_by_length(10000) #== 47847
