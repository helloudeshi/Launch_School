=begin    
Create a method that takes a string argument 
and returns a copy of the string with 
every second character in every third word 
converted to uppercase. Other characters should remain the same.

original = 'Lorem Ipsum is simply dummy text of the printing world'
expected = 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG world'
p to_weird_case(original) == expected

original = 'It is a long established fact that a reader will be distracted'
expected = 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case(original) == expected

p to_weird_case('aaA bB c') == 'aaA bB c'

original = "Mary Poppins' favorite word is supercalifragilisticexpialidocious"
expected = "Mary Poppins' fAvOrItE word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS"
p to_weird_case(original) == expected

A: 
-iterate over sentence 
- take 3rd word (2,5,8..)
- upacase each seond character of the word
return the updated sentence



=end 

def to_weird_case(sentence)
  word_arr = sentence.split
  i = 2
  loop do 
    word_arr[i] = second_char_upcase(word_arr[i])
    i += 3
    break if i >= word_arr.size
  end
  word_arr.join(' ')
end

def second_char_upcase(word)
  characters = word.chars
  characters.each_with_index do |char,char_index|
    char.upcase! if char_index.odd?
  end
  characters.join
end


original = 'Lorem Ipsum is simply dummy text of the printing world'
expected = 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG world'
p to_weird_case(original) == expected

original = 'It is a long established fact that a reader will be distracted'
expected = 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case(original) == expected

p to_weird_case('aaA bB c') == 'aaA bB c'

original = "Mary Poppins' favorite word is supercalifragilisticexpialidocious"
expected = "Mary Poppins' fAvOrItE word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS"
p to_weird_case(original) == expected