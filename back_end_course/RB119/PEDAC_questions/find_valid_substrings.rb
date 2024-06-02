=begin  
# Write a function that finds all substrings that doesn’t contain any of the prohibited characters given in the second argument.  
Given two string arugments, return an array of elements
 
Test cases
puts find_valid_substrings("test", "t").inspect # [ 'e', 'es', 's' ]
puts find_valid_substrings("hello", "el").inspect # [ 'h', 'o' ]
puts find_valid_substrings("12345", "3").inspect # [ '1', '12', '2', '4', '45', '5' ]
puts find_valid_substrings("abcde", "xyz").inspect
# [
  'a', 'ab', 'abc', 'abcd', 'abcde', 'b',
  'bc', 'bcd', 'bcde', 'c', 'cd', 'cde',
  'd', 'de', 'e'
]

Rules:
- Given first string contains mix of lowercase alpha cars and/or digits
- Given second string contains chars that should not be present in return array
- Return an array of elements where
  - find all substrings that don't contain any prohibited chars
    - probhibited chars are chars denoted by the 2nd string argument
- Substrings are at least 1 char long and increase upto the end length of the string
- If given first string does not contain any chars frm given 2nd string
  - return ALL substrings

  Algorithm:
- CREATE an array of prohibited chars
- CREATE anempty array of substrings
- CREATE valid substrings array
- FIND all substrings
  - ITERATE as many times as the length of the substring
    - for each char
      - ITERATE upto the length of the string
        - append substrings into empty holding array
- SELECT substrings that do not contain prohibited chars
  -ITERATE over prohibited chars
    - for each prohibted char
      - ITERATE over substrings
        - if the current substring does not contain the prohibited char
          - append it to valid substrings
        - else, move onto next substring
- RETURN unprohibited substrings


- FIND all substrings that do contain
=end

=end