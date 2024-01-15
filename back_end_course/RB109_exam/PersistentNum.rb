def persistence(num)
  multiple_array = []
  new_num_array = num.digits

  while new_num_array.size >= 2
    i = 0
    new_num = 1
    loop do
      new_num *= new_num_array[i]
      i += 1
      break if i == new_num_array.size
    end
    multiple_array << new_num
    new_num_array = new_num.digits
    # p "new_num_array = #{new_num_array}"
  end
  multiple_array.size
end

p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4
p persistence(234)
