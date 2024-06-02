=begin   
Given a grid of values represented by an array of arrays, e.g.:
[1, 2, 3],
[4, 5, 6],
[7, 8, 9]

Return the largest sum of a column of values in the grid.
In this example, the largest sum is 18.

a = [[1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]]

largest_column(a) == 18

b = [[1, 2, 3, 4],
    [5, 6, 7, 8]]

largest_column(b) == 12

c = [[1, 0, 0],
     [5, 8, 10],
     [3, 5, 1]]

largest_column(c) == 13

P:
input - an array of arrays
output - largest sum of column

E:
a = [[1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]]

largest_column(a) == 18
--> 1+4+8= 13, 2+5+8 = 15,  3+6+9= 18
largest sum is 18

D:

Algo:
- create largest_sum variable to store largest sum
- iterate over to  get column index -->column index is statring from 0 and ending from
  (size of sub array -1 )
- for each column index it should be iterate over the array to access 0th index of every sub array
i.e. this should itearte with index to acess all sub_arrays once
a = [[1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]]
    should take - [1,4,7]
    i.e a[0][0],a[1][0],a[2][0]
-create an empty array to store all column numbers to it (current array)
- take each sub array (iterate over each index)
- find 0th index of all arrays and append to current array
-if current array sum  > largest sum --> reassign largest sum to current array sum 
-return largest sum
=end  

def largest_column(arr)
  largest_sum = 0
  (0...arr[0].size).each do |column_index|
    current_array = []
    (0..arr.size - 1).each do |index|
      current_array << arr[index][column_index]
    end
    largest_sum = current_array.sum if largest_sum < current_array.sum
  end
  largest_sum
end

a = [[1, 2, 3],
     [4, 5, 6],
     [7, 8, 9]]

p largest_column(a) == 18

b = [[1, 2, 3, 4],
    [5, 6, 7, 8,]]

p largest_column(b) == 12

c = [[1, 0, 0],
     [5, 8, 10],
     [3, 5, 1]]

p largest_column(c) == 13
