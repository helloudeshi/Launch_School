# def missing(array)
#   (array[0]..array[-1]).to_a.select{|ele| !array.include?(ele)}
# end

# def missing(array)
#   (array[0]..array[-1]).to_a.reject{|ele| array.include?(ele)}
# end

def missing(arr)
  (arr[0]..arr[-1]).to_a.reject{|ele| arr.include?(ele)}
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []

