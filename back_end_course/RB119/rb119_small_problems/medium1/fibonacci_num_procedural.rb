def fibonacci(n)
  return 1 if n == 1 || n==2
  fib_1 = 1
  fib_2 = 1
  fib_n = 0

  (3..n).each do
    fib_n = fib_1 + fib_2
    fib_1 = fib_2
    fib_2 = fib_n
  end
  fib_n
end

p fibonacci(20) #== 6765
p fibonacci(100) #== 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
