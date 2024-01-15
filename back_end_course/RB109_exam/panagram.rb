def panagram?(sentence)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  new_sentence = sentence.delete(' ').downcase
  sentence_array = new_sentence.split('')
  sorted_sentence = sentence_array.sort!.join
  sorted_sentence.squeeze.include?(alphabet)
end

p panagram?('abcdefghijkl mnopqr stuvwxyz.')
p panagram?('The quick brown fox j9umps -over the lazy dog.') == true
p panagram?('This is not a pangram.') == false
p panagram?('qwert') == false
