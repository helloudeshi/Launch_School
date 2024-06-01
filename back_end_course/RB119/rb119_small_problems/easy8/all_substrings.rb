=begin   
P: i/p - str
  o/p - list of all substrings 

  Algo :
 - create an empty array to store substrings
 - iterate over str 
     - start_index - (0..str.size)
     -end_index - (0..str.size)
    - use str slice method to get substr and store those in array

    return substr array


=end

def substrings(str)
  all_substrs = []
  (0...str.size).each do |start_index|
    (start_index...str.size).each do |end_index|
      all_substrs << str[start_index..end_index]
    end
  end
all_substrs
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]