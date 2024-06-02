=begin    

Create a method that takes two strings as arguments and returns true 
if some portion of the characters in the first string 
  can be rearranged to match the characters in the second. 
  Otherwise, the method should return false.

You may assume that both string arguments only 
contain lowercase alphabetic characters. 
Neither string will be empty.

p unscramble('ansucchlohlo', 'launchschool') == true
p unscramble('phyarunstole', 'pythonrules') == true
p unscramble('phyarunstola', 'pythonrules') == false
p unscramble('boldface', 'coal') == true

Algo :
  - Create two hashes from two strings
  - itearte over second hash keys,
   - if the second hash key is in 1st hash keys
    check the value is greater athan or eqaul

    if all the keys and values are in first hash return true
      unless false


=end

def unscramble(str, word)
  str_hash = str.chars.tally
  word_hash = word.chars.tally

  word_hash.all? do |key,value|
     str_hash.keys.include?(key) && value <= str_hash[key]
  end 
end

p unscramble('ansucchlohlo', 'launchschool') == true
p unscramble('phyarunstole', 'pythonrules') == true
p unscramble('phyarunstola', 'pythonrules') == false
p unscramble('boldface', 'coal') == true
