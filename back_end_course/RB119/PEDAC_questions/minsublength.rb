=begin

Given an array of n positive integers and a positive integer, 
find the minimal length of a contiguous subarray for which the sum >= integer.

p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
p minSubLength([1, 10, 5, 2, 7], 9) == 1
p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
p minSubLength([1, 2, 4], 8) == 0

=end


=begin
input - array of positive integers
return - minimal subarray length for which the sum of the elements are equal or larger than the target

*algorithm
left = 0
right = 0
return 1 if arr[0] = target

# find initial subarray to work with:
increment the right index until subarray_sum >= target
  return 0 if we've hit the end of the array (right index == arr.size)
minimum_length = right - left + 1
current_sum = subarray_sum

# big picture - adjust the initial subarray and move through the entire array:
  remove the leftmost element (subtract from the current sum too) and increment the left index
  add elements to the right of the subarray until subarray sum >= target
  check the current subarray size; if the size is smaller than the minimum_length, reassign minimum length
  continue doing the above until the right index is out of bounds

The only feedback I have is that you could generalize your guard clause return 1 if arr[0] >= target. The issue is that we can actually apply this guard clause to any element of arr, not just the 0th.
If you left this out and refactored your first loop to check the sum first, left and right would both stay 0  and minimum_length would start at 1. Then, you could refactor your outer until loop to break if minimum_length is ever 1, since at that point we know we can stop iterating - there's no way for there to be a smaller subarray. I've attached a file with a refactor.
Another way to implement this rule would just be to add return 1 if arr[right] >= target any time we increment right. Since right is guaranteed to be reassigned to every array index over the course of the method execution, this will find any element that's greater than target.
This is a minor optimization, though. Excellent work here!

# detail for the above loop:
loop this entire thing until right == arr.size
  subtract arr[left] from current_sum
  increment left index by 1
  
  until current_sum >= target
    increment right index by 1
    break if right index == arr.size to avoid out of bounds when adding in the next line
    add arr[right] to current sum
  end

  
  current_length = right - left + 1
  check whether current_length < minimum_length
    if so, reassign minimum_lenghth to current_length
end loop

return minimum_length

=end

def minSubLength(arr, target)
  left = 0
  right = 0
  return 1 if arr[0] >= target
  
  current_sum = arr[0]
  
  loop do 
    right += 1
    return 0 if right == arr.size
    current_sum += arr[right]
    break if current_sum >= target
  end
  
  minimum_length = right - left + 1
  
  until right == arr.size
    current_sum -= arr[left]
    left += 1
    
    until current_sum >= target
      right += 1
      break if right == arr.size
      current_sum += arr[right]
    end
    
    current_length = right - left + 1
    minimum_length = current_length if current_length < minimum_length
  end
  
  minimum_length
end
=begin
  
Ewa
PEDAC
P:
- input is an array of positive and negative integes
- find the min length of a contingous subarray for which the sum >= integers

E:
p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
2,
2, 3
2, 3, 1
2, 3, 1, 2
2, 3, 1, 2, 4
2, 3, 1, 2, 4, 3
-3
-3, 1
-3, 1, 2
-3, 1, 2, 4
-3, 1, 2, 4, 3
etc.
p minSubLength([1, 10, 5, 2, 7], 9) == 1
p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
p minSubLength([1, 2, 4], 8) == 0

DS:
input: array
output: int

A:
- create all possible subarrays from the argument array, store them in `subarrays` array
- select only those whose sum is equal or greater than the second method argument, store them in `result`
- return first element of `result`
=end
def min_sublength(arr, target)
  subarrays = []

  (0...arr.size).each do |start|
    (start.next...arr.size).each do |finish|
      subarrays << arr[start..finish]
    end
  end
  result = subarrays.select { |array| array.sum >= target }

end
=end

=begin
Ji Hea

input - array of positive integers
return - minimal subarray length for which the sum of the elements are equal or larger than the target

*algorithm
left = 0
right = 0
return 1 if arr[0] >= target

# find initial subarray to work with:
increment the right index until subarray_sum >= target
  return 0 if we've hit the end of the array (right index == arr.size)
minimum_length = arr[left..right].size
current_sum = subarray_sum

subtract arr[left] from current_sum
increment left index by 1

until current_sum >= target
  increment right index by 1
  add arr[right] to current sum
end

current_length = right - left + 1
check whether current_length < minimum_length
  if so, reassign minimum_lenghth to current_length
???
=end

=begin
Jung-Ah
Input: array of integers
Output: integer
RUles: find a minimal contiguous array for which the sum of the array is equal to or greater than integer
Algorithm: 
--Find all continugous arrays that are equal or greater than integer
--iterate through each subarray.  
--return the minum size of the subarray
=end

def minSubLength(arr, int)
  array = []
  arr.size.times do |index1|
  index1.upto(arr.size - 1) do |index2|
    array << arr[index1..index2] if arr[index1..index2].sum >= int
  end
end

array.map do |subarray|
  subarray.size
end.min

end

p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
p minSubLength([1, 10, 5, 2, 7], 9) == 1
p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
p minSubLength([1, 2, 4], 8) == 0
=end

=begin
Mark
=begin 
P 
Given an array of n positive integers and a positive integer, find the minimal length of a contiguous subarray for which the sum >= integer.

p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
p minSubLength([1, 10, 5, 2, 7], 9) == 1
p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
p minSubLength([1, 2, 4], 8) == 0


Input: Array of n positive integers, positive number
Output: length of smallest subarray where items sum to >= integer 

Rules: 
  Implicit: 

  Explicit: Integer is positive
            Sub array must be contiguous 
            

Edge cases: 
  List: Empty list 
    should return 0
        Very long list 
          Performance?
  Number: number is large enough s.t. subarray does not exist
    should return 0
  Number: Number is zero 
    return 1 unless array is empty (?) ask 
  
E

p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
subarray is [4,3], return length
p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
subarray is [100, 1, 0, 200], return length
p minSubLength([1, 2, 4], 8) == 0
subarray does not exist, return 0

D
Integer (running count) for the length of the sub array 
Likley iterate over hash

A

high level: 
For each starting potision of the hash (0, 1, 2)
  Check if subarry starting at that position will hit target 
  If so, add the length of that subarray to a list 
  If not, pass 

We will have a list of all subarrays that meet the requirement, get the minimum value from this list. 

Lower level: 
  create iterator for which index to start at = (0..length(list))
  
  create empty list for lengths of all subarrays which fit the problem 
  for each starting_index in the list 
    create int for running total =  0 
    for each index 
      add the value at index to running total  
      if the running total is >= target, add the length of the sub array to the list and brek
      if not, incredment index by 1 and continue loop 
  reutrn  the minimum value in the list of arrays which fit the criteria

C
=end

def minSubLength(arry, target) 
  start_pos = (0..array.length)
  lengths_of_subarrays=[]
  for index in start_pos
    running_total = 0 
    arry[start_pos..array.length].each do 
  end
end
=end

=begin
Udeshika
P: 
I/P  - array of postive integers and a Integer
O/P -  minimum length of contiguous subarray which has greater or equal sum for the given integer

E : 
p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2 
---> 4+3= 7 --> min length of subarray =2
p minSubLength([1, 10, 5, 2, 7], 9) == 1
--> 10 >= 9 min length is  1
p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
--> [100,1,0,200] min length is 4
p minSubLength([1, 2, 4], 8) == 0
---> this is output 0 since [1+2+4] <= 8

D:
input = integer array
output -integer

A:
- Iterate throuh original array by considering  1 element, 2 elements etc.. until 
the length of the array to get the sum of each subarray 
- check sum of each subarray whether it is >= to given integer

"Agreed! This code works really nicely, with the same methodology as Ji Hea's last solution - see if we have any 1-length subarrays, then 2-length, etc. A few small pieces of feedback:
Your PEDAC working through the examples is strong, and your high-level algorithm is good. It would be nice to see a little more detail in the algorithm; it's not clear how subarrays are being generated, or what to do after checking each subarray sum.
Note that on line 8, sub_ary.length is always going to be equal to i, so you can just do that so save yourself a method call. Giving i a more descriptive name could be useful here (test_length, for instance) - naming variables after their logical purpose makes the code much more readable.
While it has no effect on the overall operation of the code, your subarray generating logic on lines 5-6 will generate subarrays that you've already checked in some cases. For instance, with minSubLength([1, 2, 3, 4, 5, 6, 7], 20), when i is set to 3, you'll generate:
=end


def minSubLength(ary, num)
  return 0 if ary.sum < num 

  for i in 1..ary.length - 1 do 
    ary.each_index do |j|
      sub_ary = ary[j, i]
      sum = sub_ary.inject(:+)
      return sub_ary.length if sum >= num
    end
    i += 1
  end
end
