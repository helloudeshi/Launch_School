=begin  
P: 
I/P - two argument - starting num and ending num 
O/P - print 'fizz' if divisable by 3 
      print 'buzz' if divisable by 5
      print 'fizzBuzz' if divisable by 3 and 5
else print num

  Algo:
  - iterate over star num to end num 
  - check if it is divisable 3 and 5 


=end

def fizzbuzz(start_num, end_num)
  fizzbuzz_arr = []
  (start_num..end_num).each do |num|
    if num%3 == 0 && num%5 == 0
    fizzbuzz_arr <<'FizzBuzz'
    elsif num%5 == 0 
      fizzbuzz_arr << 'Buzz'
    elsif num%3 == 0
      fizzbuzz_arr << 'Fizz'
    else 
      fizzbuzz_arr << num
    end
  end
p fizzbuzz_arr
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz