=begin
def factors(number)
    divisor = number
    factors = []
    begin
      factors << number / divisor if number % divisor == 0
      divisor -= 1
    end until divisor == 0
    factors
  end
=end

def f_factors(number)
  divisor = number
  factors = []
  #   loop do
  #     factors << (number / divisor) if number % divisor == 0
  #     divisor -= 1
  #     break if divisor == 0
  #   end
  #   factors

  while divisor > 0
    factors << (number / divisor) if number % divisor == 0
    divisor -= 1
  end
  factors
end

p f_factors(6)
p f_factors(10)
p f_factors(15)
