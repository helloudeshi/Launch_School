def multiply_list(arr1,arr2)
  new_arr =[]
  (0..arr1.size-1).each do |index|
    new_arr << arr1[index]*arr2[index]
  end
  new_arr
end



p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]