=begin   
P: i/p - integer array 
   o/p - average of all numbers in array

   rules : don't use Array#sum method

   Algo:
    - Create variable to store array_sum
    - iterate through array 
    - add each number to array_sum and get the total 
    - then divided array_sum by array.size and return the value
=end
def average(arr)
  array_sum = 0
  arr.each do |num|
    array_sum += num 
  end
  array_sum/arr.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40