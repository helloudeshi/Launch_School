# def include?(arr, num)
#   arr.any?(num)
# end
### second method 

def include?(array,value)
  !!array.find_index(value) # find_index(object) → integer or nil & !! will convert it to boolean value
end


p include?([1, 2, 3, 4, 5], 3) == true
p include?([1, 2, 3, 4, 5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
