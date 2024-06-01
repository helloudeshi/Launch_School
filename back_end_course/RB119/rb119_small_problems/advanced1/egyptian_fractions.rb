=begin  
Pro
 - write two mwthods
 1. takes rational number as i/p argument and return
  an array of denominators that are part of an unit fraction representation
  eg: 2 = 1/1 + 1/2 + 1/3 +1/6 --> return [1,2,3,6]

2. an array of unit fractions denominators and calculates resulting rational number

Algo
 - method for calculate sum of rational numbers
  -create a variable to get the sum
   -iterate over denominator array
   -convert each denominator to unit rational number and add to sum

  return sum

  
=end 

def egyptian(rational_num)
  denom_arr = []
  if rational_num.numerator > rational_num.denominator
    denom_arr << 1
    new_rational = rational_num - 1
  else
    new_rational = rational_num
  end
  count = 2
  sum = 0
  num = new_rational

  loop do
    if (num - Rational(1, count)) >= 0
      denom_arr << count
      sum += Rational(1, count)
      num -= Rational(1, count)
    end
    count += 1
    break if sum == new_rational
  end
  denom_arr
end

def unegyptian(arr)
  sum = 0
  arr.each do |int|
    curent_rational = Rational(1 ,int)
    sum += curent_rational
  end
  sum.to_r
end


p egyptian(Rational(2,1)) # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

# p unegyptian([1, 1, 4, 30])
# p unegyptian([1, 2, 3, 6])
p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)

=begin 
## try with an algorithm

# def egyptian(rational_num)
#   denom_arr = []
#   if rational_num.numerator >= rational_num.denominator
#     new_rational = rational_num -1
#     denom_arr << 1 unless denom_arr[0] == 1
#   else
#     new_rational = rational_num
#   end
#   if new_rational == 1
#    loop do
#     if (new_rational.denominator % new_rational.numerator) == 0
#       denom_arr << new_rational.denominator / new_rational.numerator
#       break
#     else
#       int = (new_rational.denominator / new_rational.numerator) + 1
#       denom_arr << int
#     end
#     new_rational -= Rational(1 ,int)
#   end
# denom_arr

# end
=end 