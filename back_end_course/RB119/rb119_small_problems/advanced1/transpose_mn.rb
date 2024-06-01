def transpose(matrix)
  new_matrix = []
  (0...matrix[0].size).each do |index|
    transpose_matrix = []
    matrix.each do |sub_arr|
      transpose_matrix << sub_arr[index]
    end
    new_matrix << transpose_matrix
  end
   new_matrix
end

 p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
 p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
 p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
   [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
 p transpose([[1]]) == [[1]]