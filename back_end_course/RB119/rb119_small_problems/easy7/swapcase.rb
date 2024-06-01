def swapcase(sentence)
  new_sentence = ''
  sentence.each_char do |char|
    new_sentence << if char =~ /[a-z]/
                      char.upcase
                    elsif char =~ /[A-Z]/
                      char.downcase
                    else
                      char
                    end
  end
  new_sentence
end

p swapcase('PascalCase') == 'pASCALcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
