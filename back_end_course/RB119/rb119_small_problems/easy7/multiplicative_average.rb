def show_multiplicative_average(arr)
 length = arr.size.to_f
 multiply = 1.0
 arr.each do |num|
  multiply *=num
 end
 format('%.3f',(multiply/length))
end



p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667