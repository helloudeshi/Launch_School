=begin   
  P :i/p - string
     o/p - nnew string which every consonant charcter is doubled

  Algo :
   - create variable with consonants 
   - create newstring variable to store doubled word
   - itearte over str 
   - if the character is a consonant double the character and append to 
    new str
    unless append the character 

      return new str
=end

def double_consonants(str)
  consonants = %w(b c d f g h j k l m n p q r s t v w x y z)
  doubled_str = ''
  str.chars.each do  |char|
    if consonants.include?(char.downcase)
      doubled_str << char * 2
    else 
      doubled_str << char
    end
  end
  doubled_str
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""