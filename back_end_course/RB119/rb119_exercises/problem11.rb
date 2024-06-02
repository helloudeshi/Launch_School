=begin    
Create a method that takes a nonempty string as an argument and 
returns an array consisting of a string and 
an integer. If we call the string argument s, 
the string component of the returned array t, 
and the integer component of the returned array k, 
then s, t, and k must be related to each other such that s == t * k. 
The values of t and k should be the shortest possible substring 
and the largest possible repeat count that satisfies this equation.

You may assume that the string argument consists entirely of lowercase alphabetic letters.

p repeated_substring('xyzxyzxyz') == ['xyz', 3]
p repeated_substring('xyxy') == ['xy', 2]
p repeated_substring('xyz') == ['xyz', 1]
p repeated_substring('aaaaaaaa') == ['a', 8]
p repeated_substring('superduper') == ['superduper', 1]

P:
i/p - string 
o/p - an array of sortest posible substring
  and largest possible repeat count such that 
  str = sub_str * count 

E:
p repeated_substring('xyzxyzxyz') == ['xyz', 3]
--> 'xyz' repeated 3 times 
p repeated_substring('xyxy') == ['xy', 2]

D:

A:
- itearte over string
- create sub_str with 1st letter
- then check whether sub_str * (string length / sub_str length) == string
if so return sub_str and sub_string length

  unless repeat above steps untill string size 
    

C:
=end

def repeated_substring(str)
  sub_str = ''
  str.chars.each do |char|
    sub_str << char 
    count = str.size/sub_str.size
    return [sub_str,count] if str == sub_str *(count) 
  end 
end

p repeated_substring('xyzxyzxyz') == ['xyz', 3]
p repeated_substring('xyxy') == ['xy', 2]
p repeated_substring('xyz') == ['xyz', 1]
p repeated_substring('aaaaaaaa') == ['a', 8]
p repeated_substring('superduper') == ['superduper', 1]
