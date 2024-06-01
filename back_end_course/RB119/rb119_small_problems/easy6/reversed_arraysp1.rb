def reeversee!(arr)
  idex = arr.length/2
  idex.times do |i|
    arr[i], arr[-(i+1)] = arr[-(i+1)], arr[i] 
    
  end
  p arr
end

list = [1,2,3,4]
result = reeversee!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reeversee!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

 list = ['abc']
p reeversee!(list) == ["abc"] # true
p list == ["abc"] # true

 list = []
p reeversee!(list) == [] # true
p list == [] # true
