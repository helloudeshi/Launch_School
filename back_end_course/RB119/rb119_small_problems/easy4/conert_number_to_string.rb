NUM_STR = {}
['0','1','2','3','4','5','6','7','8','9'].each_with_index{|char,idex| NUM_STR[idex] = char}

def integer_to_string(num)
  str = ''
  str << num if NUM_STR.values.include?(num)
end 

p integer_to_string(4) #== '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'