=begin    
P: 
i/p - number 
o/p - double number unless i/p is a double number
 where double num is - even number of digits with 
  left side digits == right side digits

Algo:
- get the middle index and , 
if digits are even in i/p 
-compare two numbers (0..middleindex) and (middle index to last num)
- if those two numbers are same , return same num
  unless return doubled number
=end 
def twice(num)
  num_str = num.to_s
  middle_index = num_str.size/ 2 - 1
  #p  num_str[middle_index+1..]
  if num_str.size.even? && num_str[0..middle_index] == num_str[middle_index+1..]
     num
  else  
     num * 2  
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10