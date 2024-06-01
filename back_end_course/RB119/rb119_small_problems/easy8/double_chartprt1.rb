=begin   
i/p - string
o/p - new string with evry character in i/p string is doubled

Algo :
-create new str to save doubled characters 
- itearte over chars in the string and 
- multiply each char by two and append to new_str variable
-return new string
=end

def repeater(str)
  doubled_str = ''
  str.chars.each do |char|
    doubled_str << char * 2
  end
   doubled_str
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''