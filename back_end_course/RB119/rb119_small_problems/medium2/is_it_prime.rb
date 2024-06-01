=begin   
pro : i/p - number
      o/p - boolean (whether the num is prime or not)

Algo :
 - create an arry to store all factors of num
 - iterate through (1..num)--integer
 - check the number is divisiable by intger
   - if so append to the array 
    
  after all iterations if array size is 2 -->return true unless false
=end

def is_prime(num)
  factors = []
  (1..num).each do |int|
    factors << int if num%int == 0
  end
  factors.size == 2

    end

puts(is_prime(1) == false)              # true
puts(is_prime(2) == true)               # true
puts(is_prime(3) == true)               # true
puts(is_prime(4) == false)              # true
puts(is_prime(5) == true)               # true
puts(is_prime(6) == false)              # true
puts(is_prime(7) == true)               # true
puts(is_prime(8) == false)              # true
puts(is_prime(9) == false)              # true
puts(is_prime(10) == false)             # true
puts(is_prime(23) == true)              # true
puts(is_prime(24) == false)             # true
puts(is_prime(997) == true)             # true
puts(is_prime(998) == false)            # true
puts(is_prime(3_297_061) == true)       # true
puts(is_prime(23_297_061) == false)     # true