def interleave(arr1,arr2)
  # combined_ary = []
  # arr1.each_with_index do |_, i|
  #   combined_ary << arr1[i]
  #   combined_ary << arr2[i]
  # end
  # combined_ary
  p arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']