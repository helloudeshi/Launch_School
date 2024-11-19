# def divisors(int)
#   divisors_arr = []
#   (1..Math::sqrt(int)).each {|num| divisors_arr << num << int/num if int%num ==0}
#   divisors_arr.uniq.sort
# end

def divisors(num)
  divisor_arr = []
  1.upto(num / 2).each { |ele| divisor_arr << ele if num % ele == 0 }
  divisor_arr << num
end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99_400_891) == [1, 9967, 9973, 99_400_891] # may take a minute
