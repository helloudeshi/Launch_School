# You have to cretae a method that takes a positive integer number and return the next
# bigger number formed by the same digits
#  9--> -1
#  111--> -1
#  513 --> 531
#  531--> -1
#  2817--> 2871
#  if no bigger number can be composed using
#   those digits return -1
#
#   test cases:
#
#   p next_bigger_num(9) == -1
#  p next_bigger_num(12) == 21
#  p next_bigger_num(513) == 531
#  p next_bigger_num(2817) == 2871
#  p next_bigger_num(111) == -1
#  p next_bigger_num(531) == -1
#  p next_bigger_num(1234567899) == 123456798
#
#  P:
#  input - integer
#  output - next biggest integer
#
#  edge cases : return -1 if no bigger number using those digits
#
#  E:
#
#  D:
#
#  A:
#  - convert intger in to array
#  - take the 1st number
#  - take rest of the numbers and from the end and change those numbers
#  - check whether changed numbers are larger thna the given number
#  if so return the changed number
#   unless return -1
#

def next_bigger_num(num)
  num_arr = num.to_s.split('') 

  counter = -1
  biggest_num = if num_arr.size == 2
                  []
                else
                  num_arr[0..num_arr.size - 3]
                end

  loop do
    if num_arr[counter].to_i > num_arr[counter - 1].to_i
      biggest_num << num_arr[counter]
      biggest_num << num_arr[counter - 1]
    else
      biggest_num = num_arr
    end

    break if num <= biggest_num.join.to_i || counter == -num_arr.size + 1

    counter -= 1
  end
  new_num = biggest_num.join.to_i
  if num < new_num
    new_num
  else
    -1
  end
end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2817) == 2871
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123_456_789) == 123_456_798
