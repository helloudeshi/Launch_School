# Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2.
# In the alphabet, a and b are also in positions 1 and 2.
# Notice also that d and e in abode occupy the positions they would occupy in the alphabet,
# which are positions 4 and 5.
#
# Given an array of words, return an array of the number of letters that occupy their
# positions in the alphabet for each word. For example,
#
# p symm(["abode","ABc","xyzD"]) == [4, 3, 1]
# p symm(["abide","ABc","xyz"]) == [4, 3, 0]
# p symm(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6, 5, 7]
# p symm(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]
#
# P:
# input - an array of strings
# output - number of letters in the string which are same as alphabet location
#
# Rules :
# - case should be considered. it means for position 1, 'A' or 'a'
#
# E:
# p symm(["abode","ABc","xyzD"]) == [4, 3, 1]
# ---> abode--[a,b,d,e]-->4 , ABC--> 3, xyzD--> 1
#
# p symm(["abide","ABc","xyz"]) == [4, 3, 0]
# p symm(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6, 5, 7]
# p symm(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]
#
#
# D:
#
#
# A:
# -create array of alphabet
# - create local variable count and initialize to 0
# - create an empty array to store position count
# - iterate through array - argument
#
#   - for each word check in the array
#   - check the char position with the alphapet char position ???
#       - itererate through alpahbet array - 'each_with_index'
#       check the letter is eqaul to the char in the word
#       if it is equal add 1 to count
#         check for all chars
#         and store count in a position array and reset counter to 0
#
#   - then go to next word, and iterate over alphabet to check the char
#
#   - return position_count array
#
#
# C:

def check_alphabet(word)
  alphabet = %w[a b c d e f g h i j k l m n o p q r s t u
                v w x y z]
  count = 0
  word.split('').each_with_index do |char, index|
    count += 1 if char.downcase == alphabet[index]
  end
  count
end

# p check_alphabet('abcd')

def symm(arr)
  position_arr = []
   arr.map do |word|
    position_arr << check_alphabet(word)
   end
 position_arr
end

 p symm(["abode",'abc'])
 p symm(["abode","ABc","xyzD"]) == [4, 3, 1]
 p symm(["abide","ABc","xyz"]) == [4, 3, 0]
 p symm(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6, 5, 7]
 p symm(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]
