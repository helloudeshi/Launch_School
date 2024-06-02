=begin   
Write a function scramble(str1,str2) that returns 
true if a portion of str1 characters can be 
re-arranged to match str2, otherwise return false

test cases:
 p scramble('javaass', 'jjss')== false
 p scramble('rkqodlw', 'world')== true
 p scramble('cordwarassoqqt', 'cordwars')== true
 p scramble('katas', 'steak')== false
 p scramble('scriptjava', 'javascript')== true
 p scramble('scriptingjava', 'javascript')== true

 prob:
  only lowercase letters will be used and no, punctuation 
  or digits will be included.
  input - 2 strings
  ouyput - if str2 can be made of using the letters of 
    str1 return true, otherwise flase

  Algo:
  - take str 2 and its char count per each char
  - check if the char is include in the str 1
  and char count of str1 is equal to char count of str2
  check for all characters in str2 
  if all charcters and count is equal return true



=end 
def scramble(str1,str2)
  str2.each_char.all? do |char|
     str2.count(char) <= str1.count(char)
  end
end

# def scramble(str1,str2)
#   str2.chars.each do |char|
#     return false if str2.count(char) > str1.count(char)
#   end
#   true
# end

 p scramble('javaass', 'jjss') == false
 p scramble('rkqodlw!', 'world!') == true
 p scramble('cordwarassoqqt', 'cordwars') == true
 p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript')== true


