def zip(arr1,arr2)
  index = arr1.size-1
  zipped_arr = []
  0.upto(index) {|num| zipped_arr << [arr1[num],arr2[num]]}
  zipped_arr
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]