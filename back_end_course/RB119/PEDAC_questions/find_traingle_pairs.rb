=begin   
# # Given 2 two arguments of an array of numbers and a number, 
find all the pairs that results in the forming a triangle with the number.  

# # Note: To determine if three numbers form a triangle you have to use 
the Triangle Inequality Theorem, which states that the sum of two side lengths of a triangle 
is always greater than the third side. 
If this is true for all three combinations of added side lengths, then you will have a triangle.

# # # Test cases
# puts find_triangle_pairs([2, 3, 4, 5], 7).inspect 
# [ [ 3, 5 ], [ 4, 5 ] ]
# puts find_triangle_pairs([1, 2, 3, 4], 10).inspect # []
# puts find_triangle_pairs([7, 10, 12, 15], 9).inspect 
# [ [ 7, 10 ], [ 7, 12 ], [ 7, 15 ], [ 10, 12 ], [ 10, 15 ], [ 12, 15 ] ]
# puts find_triangle_pairs([8, 2, 5, 6, 3], 4).inspect 
# [ [ 8, 5 ], [ 8, 6 ], [ 2, 5 ], [ 2, 3 ], [ 5, 6 ], [ 5, 3 ], [ 6, 3 ] ]

algo:
- create new array to track all possible traingle pairs
-ierate through number array to get all the possible number pairs
- (0..arr.length-2) - start index
- end index --> 1 to arr.length-2
- check the sum of sub arrays with the given number
- if the sum is greater than the given number return that pair to new array


=end

def can_form_triangle(num1,num2,num3)
  num1+num2 > num3 && num2+num3 >num1 && num1+num3 > num2
end

def find_triangle_pairs(arr,num)
  traingle_pairs =[]
  (0...arr.size).each do |start_index|
    (start_index+1...arr.size).each do |end_index|
      temp_arr =[]
      temp_arr << arr[start_index]
      temp_arr << arr[end_index]
      traingle_pairs << temp_arr if can_form_triangle(temp_arr[0],temp_arr[1],num)
    end
  end
  traingle_pairs.uniq
end

p find_triangle_pairs([1,2,3,4],5)
puts find_triangle_pairs([2, 3, 4, 5], 7).inspect 
# # [ [ 3, 5 ], [ 4, 5 ] ]
 puts find_triangle_pairs([1, 2, 3, 4], 10).inspect # []
 puts find_triangle_pairs([7, 10, 12, 15], 9).inspect 
# # [ [ 7, 10 ], [ 7, 12 ], [ 7, 15 ], [ 10, 12 ], [ 10, 15 ], [ 12, 15 ] ]
 puts find_triangle_pairs([8, 2, 5, 6, 3], 4).inspect 
# [ [ 8, 5 ], [ 8, 6 ], [ 2, 5 ], [ 2, 3 ], [ 5, 6 ], [ 5, 3 ], [ 6, 3 ] ]
