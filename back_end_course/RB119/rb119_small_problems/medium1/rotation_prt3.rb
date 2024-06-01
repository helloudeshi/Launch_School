=begin    
Rotation (Part 3) If you take a number like 735291, 
and rotate it to the left, you get 352917. 
If you now keep the first digit fixed in place, 
and rotate the remaining digits, you get 329175.
 Keep the first 2 digits fixed in place and rotate again to 321759. 
 Keep the first 3 digits fixed in place and rotate again to get 321597. 
 Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. 
 The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, 
and returns the maximum rotation of that argument. 
You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

Example:

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845


E:
735291 --> 352917 -->329175-->321759-->321597-->321579
 
=end
# def max_rotation(int)
#   return int if int.to_s.size == 1
#   current_int = int
#   max_rotate_num = ''
#    #while current_int.to_s.size > 1
#   (int.to_s.size ).times do
#     n = current_int.to_s.size
#    p current_rotate_arr =  rotate_rightmost_digits(current_int,n).to_s.split('')
#     max_rotate_num << current_rotate_arr.shift  if current_rotate_arr.size > 2
#     p max_rotate_num
#     current_int = current_rotate_arr.join.to_i
#    end
#   #max_rotate_num << current_rotate_arr.first
#   max_rotate_num.to_i
# end


# def rotate_rightmost_digits(num, n)
#   num_arr = num.to_s.split('')
#   left_num = num_arr[0...(num_arr.size - n)]
#   i = -1
#   while i >= -n do 
#   num_arr_right = num_arr[i..-1]
#   rightmost_num = rotate_array(num_arr_right)
#   i -= 1
#   end
#   final_num_arr = left_num << rightmost_num
#   final_num_arr.join.to_i
# end


# def rotate_array(arr)
#   rotate_arr = arr.dup 
#   first_num = rotate_arr.shift
#   rotate_arr.append(first_num) 
# end

def max_rotation(num)
  max_rotate_arr = []
  num_arr = num.to_s.split('')
  while num_arr.size > 0
    num_arr_first = num_arr.shift 
    current_arr = num_arr << num_arr_first
    if current_arr[0] != 0
      max_rotate_arr << current_arr.shift
    else 
      current_arr.shift
    end 
    num_arr = current_arr
  end
  max_rotate_arr.join.to_i
end


  p max_rotation(735291) == 321579
  p max_rotation(3) == 3
  p max_rotation(35) == 53
  p max_rotation(105) == 15 # the leading zero gets dropped
  p max_rotation(8703529146) == 7_321_609_845
