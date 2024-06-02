=begin   
Create a method that takes an array of integers as an argument 
and returns an array of two numbers that are 
closest together in value. 
If there are multiple pairs that are equally close, 
return the pair that occurs first in the array.

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 22, 7, 17]) == [12, 7]

P: 
input - integer array
output - array of two integers which are closet together in value
Rules:
- if there are multiple pairs that are equally close,
    return the pair that occurs in first



E:
p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
--> lowest gap is in between 15 and 11
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
---> the lowest gap is between 25 and 27
p closest_numbers([12, 22, 7, 17]) == [12, 7]
--> pairs [12,22]->10 [12,7]->5 [12,17]->5 [22,7]->15 [22,17]->5 [7,17]->10
 first pair is [12,7]

 A:
 iterate through array to get all possible integer pairs
 - then take the gap between those two numbers in those sub pairs
 - get the minimum gap and select the first pair with that min gap
 return that integer pair

=end

def closest_numbers(arr)
  number_pairs = get_two_pairs(arr)
  gaps = []
  number_pairs.map do |sub_arr|
    gaps << (sub_arr[0]-sub_arr[1]).abs
  end
  min_value = gaps.min
  min_pair = number_pairs.select{|sub_arr| (sub_arr[0]-sub_arr[1]).abs ==min_value}
  min_pair.first
end

def get_two_pairs(array)
  all_pairs = []
  (0...array.size-1).each do |start_index|
   (start_index+1..array.size-1).each do |end_index|
    pairs = []
    pairs << array[start_index]
    pairs << array[end_index]
    all_pairs << pairs
   end 
  end
  all_pairs
end


 p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
 p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
 p closest_numbers([12, 22, 7, 17]) == [12, 7]
