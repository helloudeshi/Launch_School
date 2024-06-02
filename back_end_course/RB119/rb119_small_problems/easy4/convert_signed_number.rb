require 'pry'

NUM_STR = %w[0 1 2 3 4 5 6 7 8 9]
NUM_HASH = {}
NUM_STR.each_with_index { |element, idx| NUM_HASH[element] = idx }

def string_to_signed_integer(str)
  if str[0] == '+' || str[0] == '-'
    sign = str[0]
    str = str.delete(sign)
  else  
    str
  end

  num_arr = str.chars.map { |char| NUM_HASH[char] }
  num = 0
  num_arr.each { |int| num = 10 * num + int }
  return -num if sign == '-'
  num
end

p string_to_signed_integer('4321') #== 4321
p string_to_signed_integer('-570') #== -570
p string_to_signed_integer('+100') #== 100
