# def f(str)
#   t = str[0]
#   k = 1
#   i = 0
#   loop do
#     t += str[i] if str[0] != str [i]
#     i += 1
#     break if i == str.length || str[0] == str[i]
#   end
#   substr_len = t.size
#   repeated_array = str.scan(/.{#{substr_len}}/)
#   #   p repeated_array

#   if repeated_array.all? { |element| element == repeated_array[0] }
#     t = repeated_array[0]
#     k = repeated_array.length
#   else
#     t = str
#     k = 1
#   end
#   #   j = 0
#   #   loop do
#   #     k += 1 if repeated_array[j] == repeated_array[j + 1]
#   #     j += 1
#   #     break if j == repeated_array.size
#   #   end

#   # else
#   #  output = [str, 1]
#   #  break
#   [t, k]
# end

# p f('ababab') #== ["ab", 3]
# p f('abcde') #== ["abcde", 1]
# p f('abcabg') 
# p f('pqrpqrpqr')
# p f('abadabad')  # ???

num = 10
arr =[1, 2, 3]
new_arr = arr.map do |number|
number+2
end
p arr
p new_arr
p num
