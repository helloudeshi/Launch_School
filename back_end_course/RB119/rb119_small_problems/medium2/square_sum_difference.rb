=begin   
pro :
  I/p - integer (n)
  o/p - the difference of square of sum of n numers and 
      sum of squares of n numbers
Algo :
- itarate from (1..n) 
 - get sum and square sum for each number 
 - return the differnce of sum square and square sum

        
=end

def sum_square_difference(num)
  sum = 0 
  square_sum = 0
  (1..num).each do |n|
    sum += n
    square_sum += n**2
  end
  sum**2 - square_sum
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150