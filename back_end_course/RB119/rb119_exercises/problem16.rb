=begin   
Create a method that returns the count of 
distinct case-insensitive alphabetic characters 
and numeric digits that occur more than once in the input string. 
You may assume that the input string contains only alphanumeric characters.

  p distinct_multiples('xyz') == 0               # (none
  p distinct_multiples('xxyypzzr') == 3          # x, y, z
  p distinct_multiples('xXyYpzZr') == 3          # x, y, z
  p distinct_multiples('unununium') == 2         # u, n
  p distinct_multiples('multiplicity') == 3      # l, t, i
  p distinct_multiples('7657') == 1              # 7
  p distinct_multiples('3141592653589793') == 4  # 3, 1, 5, 9
  p distinct_multiples('2718281828459045') = 5  # 2, 1, 8, 4, 5

  Algo:
  - store the string in a hash with all downcase letters
   - then select all the values which are greater than 2 and count the integers 
   return the count 
=end

def distinct_multiples(str)
  str_hash = str.downcase.chars.tally
  multiples = (str_hash.values.select do |num|
    num >=2
  end)
  multiples.count
end

  p distinct_multiples('xyz') == 0               # (none
  p distinct_multiples('xxyypzzr') == 3          # x, y, z
  p distinct_multiples('xXyYpzZr') == 3          # x, y, z
  p distinct_multiples('unununium') == 2         # u, n
  p distinct_multiples('multiplicity') == 3      # l, t, i
  p distinct_multiples('7657') == 1              # 7
   p distinct_multiples('3141592653589793') == 4  # 3, 1, 5, 9
  p distinct_multiples('2718281828459045') == 5  # 2, 1, 8, 4, 5

