## In this method , elements should be droped until it 
# block we passed if true. and should return rest of the arr. 
#  p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5,6]
# this is because , arr[0].even? is falsy, therefore 
# this method should return whole remaining arr. 

def drop_while(arr)
  index = 0 
  while index < arr.size && yield(arr[index])
    index += 1
  end
  arr[index..-1] #arr slicing syntax
end

p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5,6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []