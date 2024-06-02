# Find the length of the longest substring in the given
# string that is the same in reverse
#
# test cases:
#
# p longest_palindrome('a') == 1
# p longest_palindrome('aa') == 2
# p longest_palindrome('baa') == 2
# p longest_palindrome('baabcd') == 4
# p longest_palindrome('baab1kj12345432133d') == 9
#
# if the length of the input string is 0 return value should be 0
#
#   problem:
#   input - string
#   output - length of the longest palindrome
#
#   Algo:
#   - iterate through string
#    - get subsrting from the original string
#    - check if it is a palindrome using helper method
#    - if sub string is a palindrome keep it in a longest_palindrome str
#     - keep itearting
#     - if another substring would be a palindrome
#       check its length
#        - if length of the current palindrome is greater than
#         previous palindrome, reassign longest palindrome
#         into current one
#       - After all iterations return longest_palindrome

def longest_palindrome(str)
  return 1 if str.size == 1

  longest_palindrome_str = ''
  (0...str.size).each do |strt_index|
    (strt_index + 2..str.size).each do |length|
      temp_str = str.slice(strt_index, length) # slice uses start index and length of array or str to slice 
      if check_palindrome(temp_str) && (longest_palindrome_str.size < temp_str.size)
        longest_palindrome_str = temp_str
      else
        longest_palindrome_str
      end
    end
  end
  longest_palindrome_str.size
end

def check_palindrome(str1)
  str1 == str1.reverse
end

#  p check_palindrome('12321')
#  p check_palindrome('abc')

p longest_palindrome('abc') == 0
p longest_palindrome('') == 0
p longest_palindrome('a') == 1
p longest_palindrome('aa') == 2
p longest_palindrome('baa') == 2
p longest_palindrome('baabcd') == 4
p longest_palindrome('baab1kj12345432133d') == 9
