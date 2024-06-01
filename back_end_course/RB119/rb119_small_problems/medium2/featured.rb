=begin   
Pro :
- i/p - integer
- o/p - featured number -
        -should be odd number and multiple of 7
        - and grater than input argument and with no recurrent digits

Algo :
- start from input argument and iterate incrementitng one
 - check if the number is odd and multiple of 7 and it has differnt digits
 if so return the number
=end  

def featured(num)
  return 'No such number ' if num.digits.size >=10
  start_num = num + 1
  loop do
    return start_num if start_num.odd? && start_num % 7 == 0 && differnt_digits(start_num)

    start_num += 1
  end
end

def differnt_digits(num)
  num.digits.size == num.digits.uniq.size
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
