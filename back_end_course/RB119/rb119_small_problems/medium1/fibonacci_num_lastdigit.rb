def fibonacci_last(n)
  return 1 if n == 1 || n==2
  fib_1 = 1
  fib_2 = 1
  fib_n = 0

  (3..n).each do
    fib_n = fib_1 + fib_2
    fib_1 = fib_2
    fib_2 = fib_n
  end
  p fib_n.to_s.chars.last.to_i
end

fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789) # -> 4