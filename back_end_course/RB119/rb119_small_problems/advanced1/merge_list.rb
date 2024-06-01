=begin   
 - pro: i/p- two arrays (arr_1,arr_2)
        o/p - merged and sorted array
  algo :
  create an new_arry to store sorted array
  - index_1 (0..arr_1_size)
  - index_2 (0..arr_2_size)
  -current_index(0..min of arr_1,arr_2 size)
   - compare arr_1[index] with arr_2[index]
   if arr_1[index]< arr_2[index] --> append arr_1[0] to new_arr
                       index_1 +1, index_2 is same
      go to next iteration  

=end

def merge(arr_1,arr_2)
  return arr_1 if arr_2.empty?
  return arr_2 if arr_1.empty?

  merged_arr = []
  index_1 = 0
  index_2 = 0
  loop do 
    if arr_1[index_1] < arr_2[index_2]
      merged_arr << arr_1[index_1]
      index_1 += 1
    else 
      merged_arr << arr_2[index_2]
      index_2 += 1
    end
    break if index_1 == arr_1.size || index_2 == arr_2.size
  end
  append_extra_elements(merged_arr,arr_1,index_1)
  append_extra_elements(merged_arr,arr_2,index_2)
  merged_arr
end

def append_extra_elements(merged_arr, arr, index)
  if arr.size > index 
    (index...arr.size).each do |i|
      merged_arr << arr[i] 
    end
  end
end



p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]