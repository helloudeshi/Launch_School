=begin   
  i/p -array
  o/p - odd elements 

  Algo :
  - iterate through array
  - if index is even - elemnt posistion is odd
    - so return even indexed elements in an array

=end

def oddities(arr)
  odd_list = []
  arr.each_with_index do |ele, index|
    odd_list << ele if index.even?
  end
  odd_list  
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]