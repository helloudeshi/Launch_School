# def halvsies(array)
#    size = array.size
#   if size.odd?
#     [array[0..size/2],array[size/2+1..-1]]
#   else 
#       [array[0..size/2-1],array[size/2..-1]]
#   end

# end

#### second method 
def halvsies(array)
  mid = (array.size/2.0).ceil # 5/2.0.ceil = 3, 4/2.0.ceil =2
  first_half = array.slice(0,mid)
  second_half = array.slice(mid, array.size- mid)
  [first_half,second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]