=begin   
  i/p - number 
  o/p - sum of digits
Rules :
- dont use looping constructs (while,until,loop and each)
  Algo : 
  - 

=end

 def sum(num)
  num.digits.sum
 end
 
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45