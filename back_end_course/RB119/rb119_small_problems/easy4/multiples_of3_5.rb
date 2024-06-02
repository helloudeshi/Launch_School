def multisum(num)
  sum = 0
  for i in 1..num
    sum += i if i % 3 == 0 || i % 5 == 0
    i += 1
  end
  sum
end

p multisum(20)
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
