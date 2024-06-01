=begin    
P: - i/p - string
    o/p - all substrings that start at the begining of the string
    
    
    Algo :
    create array variable to store sub strings 
    create empty str to store current sub str
    itearte over chars of the input string
     - start from oth index char 
     - end index is vary from 0- string size
    
    add sub string to array
    reassign str variable to emty string before next iteration
return array with sub strings 



=end 

def leading_substrings(str)
  substr_array =[]
  str_arr = str.chars
  (0...str.size).each do |index|
    substr_array << str_arr[0, index + 1].join
  end
  substr_array
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']