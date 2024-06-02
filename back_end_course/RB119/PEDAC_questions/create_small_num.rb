=begin    
Write a method that takes a pair of integers as arguments, 
x and y. Remove y digits of x without reordering the digits 
of x such that you get the smallest possible value z, and return z.

Examples:

shrink(1358210, 1) => 135210

shrink(1358210, 2) => 13210

shrink(1358210, 3) => 1210

shrink(1358210, 4) => 110

shrink(135089, 1) => 13089

shrink(135089, 2) => 1089

shrink(135089, 3) => 89

shrink(135089, 4) => 8

P: i/p - 2 numbers (x,y)
  o/p - remove y amount of numbers without reordering x to get 
    smallest number 

    Algo :
    - itearate over each integers in x number
    - remove y number of integers from the x input and 
    store the remaining number in an array
    - take min from that array and return it


=end
def shrink(x,y)
  num_arr = x.to_s
  modified_num_arr = []
  (0..x.to_s.size).each do |index|
    modified_num_arr << num_arr.delete(num_arr[index, y])
    end
     modified_num_arr.min.to_i
end


# def shrink(int, num_remove)
#   str_int = int.to_s
#   arr_int = str_int.chars
#   counter = num_remove
#   loop do
#     arr_int.each_with_index do |num, idx|
#       next if idx == 0
#       if num < arr_int[idx-1]
#         arr_int.delete_at(idx-1)
#         break
#       elsif idx == arr_int.count - 1
#         arr_int.delete_at(idx)
#         break
#       end
#     end
#     counter -= 1
#     break if counter < 1
#   end
#   p arr_int
#   arr_int.join.to_i
# end

# def shrink(int, num_remove)
#   arr_int = int.to_s.chars
# #   num_remove.times do
#     arr_int.each_with_index do |num, idx|
#       if idx == arr_int.count - 1 || num > arr_int[idx+1]
#         arr_int.delete_at(idx)
#         break
#       end
#     end
#   end
#   arr_int.join.to_i
# end


p shrink(1358210, 1) == 135210

p shrink(1358210, 2) == 13210

p shrink(1358210, 3) == 1210

p shrink(1358210, 4) == 110

p shrink(135089, 1) == 13089

p shrink(135089, 2) == 1089

p shrink(135089, 3) == 89

p shrink(135089, 4) == 8