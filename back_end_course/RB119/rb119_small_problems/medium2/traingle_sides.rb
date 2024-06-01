=begin   
Pro :
 - I/p - lengths of three sides of traingle 
- o/p - whether it is equilateral, isosceles, scalene or invalid
rules : sum of the lengths of two shortest sides must be greater than the 
  length of longest side  and all sides must be greater than 0

Algo: 
 - support method to find whether given lengths are valid 
  lengths of a traingle, 
  - if it is a valid traingle 
    - find  it is equilateral , isosceles or scalene
=end  

def triangle(len_1,len_2,len_3)
 if is_triangle(len_1,len_2,len_3)
   if len_1 == len_2 && len_1 == len_3
    :equilateral
   elsif len_1 == len_2 || len_1 == len_3 || len_2 == len_3
      :isosceles
   else
    :scalene
   end
 else 
   :invalid
 end
end

def is_triangle(len_1,len_2,len_3)
  [len_1,len_2,len_3].min(2).sum > [len_1,len_2,len_3].max
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid