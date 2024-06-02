=begin
Check if a given string can be constructed
by taking a substring of it and appending
 multiple copies of the substring together

p repeated_substring_pattern("abab") == true
p repeated_substring_pattern("aba") == false
p repeated_substring_pattern("aabaaba") == false
p repeated_substring_pattern("abaababaab") == true
p repeated_substring_pattern("abcabcabcabc") == true

###
P :
- Using a substring whether the original str can be build or not
- input - string
- output - boolean

E :
repeated_substring_pattern("abab") == true
 - 'ab' can be taken as substring to construct 'abab'

repeated_substring_pattern("aba") == false
 - 'aba' can't be build by substring

repeated_substring_pattern("aabaaba") == false
 -
p repeated_substring_pattern("abaababaab") == true

repeated_substring_pattern("abcabcabcabc") == true
 - 'abc' substring can be used to build the original str

 D:
 str array

A :
 Iterate through str array by adding next character to it
 example : abab
 [a]
 [ab]
 [ab]
 [abab]
-check in each iteration whether it is equal to original str
  - check the length of sub string 
  

=end

def repeated_substring_pattern(word)
  sub_str = ''
  word_length = word.length
  word.each_char do |char|
    sub_str << char
    num = word_length / sub_str.length
    return true if sub_str * num == word
  end
  false
end

p repeated_substring_pattern("abab") == true
p repeated_substring_pattern("aba") == false
p repeated_substring_pattern("aabaaba") == false
# p repeated_substring_pattern("abaababaab") == true
# p repeated_substring_pattern("abcabcabcabc") == true

=begin
Check if a given string can be constructed by taking a substring of it and appending multiple copies of the substring together

Input: String
Output: true or false
Rules: if a substring of the input string can be multiplied by a certain number to create the input string, return true otherwise false
all the characters are lower case
no nonalphabaetic string characters

Data structure: string to store substrings or substrings in an array

Algorithm:
--create an array with all substrings
  --iterate through each position of the char and create all possible substring at each position 
  --
--variable named num = input string size / substring.size
--return substring if substring x num = input string


p repeated_substring_pattern("abab") == true
p repeated_substring_pattern("aba") == false
p repeated_substring_pattern("aabaaba") == false
p repeated_substring_pattern("abaababaab") == true
p repeated_substring_pattern("abcabcabcabc") == true
=end

def repeated_substring_pattern(str)
  str.size.times do |index1|
    (index1 + 1).upto(str.size - 2) do |index2|
      substring = str[index1..index2]
      num = str.size / substring.size
      return true if substring * num == str
  end
end
false
end
