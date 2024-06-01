=begin   
P: i/p - two integers (count and first number )
  o/p - an array of integers (count amount) multiples of first number

  Algo :
  - create an empty array to store numbers 
  - start from first number and multiply it 
    - multiplying numbers start from 1 and end with count
    append all multipled numbers to array
  -return the array

=end
def sequence(count, first_number)
  sequence_arr =[]
  (1..count).each do |int|
    sequence_arr << first_number * int
  end
  sequence_arr

  end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []