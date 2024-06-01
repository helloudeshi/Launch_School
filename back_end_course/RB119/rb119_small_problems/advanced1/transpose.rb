=begin   
Pro - i/p - an array of arrays which represents a matrix
      o/p - transpose of the matrix 
      i.e row become the column of the transpose matrix 

Algo :
  - create an array variable to store transpose matrix
  - iterate through i/p array
  -  for every sub array 0th indexed integer 
    goes to first sub_array of transpose matrix 
  - 
=end 

def transpose(matrix)
  new_matrix = []
  (0...matrix.size).each do |index|
    transpose_matrix = []
    matrix.each do |sub_arr|
      transpose_matrix << sub_arr[index]
    end
    new_matrix << transpose_matrix
  end
  new_matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

p transpose([[1,3,5],[4,6,10],[8,9,7]])