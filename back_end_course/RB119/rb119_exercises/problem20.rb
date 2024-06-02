=begin    
  Create a method that takes an array of numbers, 
  all of which are the same except one. 
  Find and return the number in the array that differs from all the rest.

The array will always contain at least 3 numbers, 
and there will always be exactly one number that is different.

p what_is_different([0, 1, 0]) == 1
p what_is_different([7, 7, 7, 7.7, 7]) == 7.7
p what_is_different([1, 1, 1, 1, 1, 1, 1, 11, 1, 1, 1, 1]) == 11
p what_is_different([3, 4, 4, 4]) == 3
p what_is_different([4, 4, 4, 3]) == 3
=end 

def what_is_different(arr)
  int_hash = arr.tally
  int_hash.each do |k,v|
    return k if v ==1
  end
end

p what_is_different([0, 1, 0]) == 1
p what_is_different([7, 7, 7, 7.7, 7]) == 7.7
p what_is_different([1, 1, 1, 1, 1, 1, 1, 11, 1, 1, 1, 1]) == 11
p what_is_different([3, 4, 4, 4]) == 3
p what_is_different([4, 4, 4, 3]) == 3