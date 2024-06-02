=begin   
Create a method that takes a single integer argument 
and returns the sum of all the multiples of 7 or 11 
that are less than the argument. 
If a number is a multiple of both 7 and 11, count it just once.

For example, the multiples of 7 and 11 that are below 25 are 7, 11, 14, 21, and 22. 
The sum of these multiples is 75.

If the argument is negative, return 0.

p seven_eleven(10) == 7
p seven_eleven(11) == 7
p seven_eleven(12) == 18
p seven_eleven(25) == 75
p seven_eleven(100) == 1153
p seven_eleven(0) == 0
p seven_eleven(-100) == 0

Algo :
  - create an empty array to keep track multiple of 
  7 and 11 which are less than input 
  - then take sum of those numbers 
=end 

def seven_eleven(integer)
  multiple_arr = []
  (1...integer).each do |num|
    multiple_arr << num if num % 7 == 0 || num % 11 == 0
  end
  multiple_arr.sum 
end


p seven_eleven(10) == 7
p seven_eleven(11) == 7
p seven_eleven(12) == 18
p seven_eleven(25) == 75
p seven_eleven(100) == 1153
p seven_eleven(0) == 0
p seven_eleven(-100) == 0