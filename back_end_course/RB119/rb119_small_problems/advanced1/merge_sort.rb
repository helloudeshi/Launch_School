# Pro : sort an array of similar data using merge sort algorithm
#
# edge cases -
#    if array size == 1 return array
#
# Algo :
# - mergesort
#  - sub_arr_1 = array[0...array.size/2]
#  -sub_arr_2 = array[array.size/2 +1 ...array.size]
#  - sub_arr_1 = mergesort(sub_arr_1)
#  - sub_arr_2 = mergrsort(sub_arr_2)
#  return merged (sub_arr_1 and sub_arr_2)
#
#  -use merge method to merge two arrays
#
def merge_sort(arr)
  return arr if arr.size == 1

  sub_arr_1 = arr[0...arr.size / 2]
  sub_arr_2 = arr[arr.size / 2 ...arr.size]
  
   sub_arr_1 = merge_sort(sub_arr_1)
   sub_arr_2 = merge_sort(sub_arr_2)
   #p sub_arr_1 , sub_arr_2
   merge(sub_arr_1, sub_arr_2)
end

def merge(arr_1, arr_2)
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
  append_extra_elements(merged_arr, arr_1, index_1)
  append_extra_elements(merged_arr, arr_2, index_2)
  merged_arr
end

def append_extra_elements(merged_arr, arr, index)
  return unless arr.size > index

  (index...arr.size).each do |i|
    merged_arr << arr[i]
  end
end

# p merge_sort([3,2,5,4])
p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort([9, 2, 7, 6, 8, 5, 0, 1]) == [0, 1, 2, 5, 6, 7, 8, 9]

p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
