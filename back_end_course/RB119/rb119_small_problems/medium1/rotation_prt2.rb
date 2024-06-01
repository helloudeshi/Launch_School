=begin   
Rotation (Part 2) Write a method that can rotate 
the last n digits of a number. 
For example:

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917
Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.
=end

def rotate_rightmost_digits(num, n)
  num_arr = num.to_s.split('')
  left_num = num_arr[0...(num_arr.size - n)]
  i = -1
  while i >= -n do 
  num_arr_right = num_arr[i..-1]
  rightmost_num = rotate_array(num_arr_right)
  i -= 1
  end
  final_num_arr = left_num << rightmost_num
  final_num_arr.join.to_i
end


def rotate_array(arr)
  rotate_arr = arr.dup 
  first_num = rotate_arr.shift
  rotate_arr.append(first_num) 
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
p rotate_rightmost_digits(51,2)