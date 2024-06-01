=begin   
pro - i/p - matrix 
      o/p - 90 degree rotated matrix
       - [[3,4,1],[9,7,5]] --> [[9,3],[7,4],[5,1]]

Algo :
- create new array variable to store rotated array
- iterate over matrix array 
   --> index is vary to (0..matrix_array[0] size)
   -set new_arr to an empty array
-0th indexed elements in the last sub_array should come to the 
 rotated 0th sub array-> array 0th indexed element  
-therefore matrix array should iterate from (0..matrix.arr.size) and 
  - add respective indexed element to the begining of new_arr(use unshift)
- After this iteration add new_arr to rotated array

return rotated array

=end
def rotate90(matrix)
  rotated_arr = []
  (0...matrix[0].size).each do |index|
    new_arr =[]
    matrix.each do |sub_arr|
      new_arr.unshift(sub_arr[index])
    end
    rotated_arr << new_arr
  end
  rotated_arr
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

 new_matrix1 = rotate90(matrix1)
 new_matrix2 = rotate90(matrix2)
 new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

 p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
 p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
 p new_matrix3 == matrix2