numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1) 
end # 1,3 are output

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end # 1,2 are output