=begin    
Create a method that takes a non-empty string as an argument. 
The string consists entirely of lowercase alphabetic characters. 
The method should return the length of the longest vowel substring. 
The vowels of interest are "a", "e", "i", "o", and "u".

p longest_vowel_substring('cwm') == 0
p longest_vowel_substring('many') == 1
p longest_vowel_substring('launchschoolstudents') == 2
p longest_vowel_substring('eau') == 3
p longest_vowel_substring('beauteous') == 3
p longest_vowel_substring('sequoia') == 4
p longest_vowel_substring('miaoued') == 5

P: input - downcase string
   output - length of the longest vowel substring

   algo:
   - create two variable to track current vowel substring and 
    longest vowel substring
    - iterate through input string chars
    -check the char is a vowel
      -if current char is a vowel stroe it in current vowel and check until 
        next char is not a vowel.
        - else store current vowel in longest vowel by checking the max length
        - re-assign current vowel to empty string

        return longest vowel string variable
=end

def longest_vowel_substring(string)
  vowels = ["a", "e", "i", "o", "u"]
  longest_vowels = ''
  current_vowels = ''

  string.chars.each do |char|
    if vowels.include?(char)
      current_vowels << char
    else
      longest_vowels = [current_vowels,longest_vowels].max_by{|str| str.size}
      current_vowels = ''
    end
  end
  longest_vowels = [current_vowels,longest_vowels].max_by{|str| str.size}
  longest_vowels.size
end


p longest_vowel_substring('cwm') == 0
p longest_vowel_substring('many') == 1
p longest_vowel_substring('launchschoolstudents') == 2
p longest_vowel_substring('eau') == 3
p longest_vowel_substring('beauteous') == 3
p longest_vowel_substring('sequoia') == 4
p longest_vowel_substring('miaoued') == 5

