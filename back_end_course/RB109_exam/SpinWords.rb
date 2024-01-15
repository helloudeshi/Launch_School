def spinWords(sentence)

    word_array = sentence.split(' ')
    spin_words_array = word_array.map do |word|
      if word.size >= 5
        word.reverse!
      else
        word
      end
    end
    spin_words_array.join(' ')

end

p spinWords('Hey fellow warriors') == "Hey wollef sroirraw"
p spinWords('This is a test') == "This is a test"
p spinWords('This is another test') == "This is rehtona test"
p spinWords('test') == "test"
