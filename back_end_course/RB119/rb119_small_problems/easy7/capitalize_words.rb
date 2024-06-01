# def word_cap(sentence)
#   word_arr = (sentence.split.map do |word|
#     word.capitalize
#   end)
#     word_arr.join(' ')
# end
#
### we can write this as below
# def word_cap(words)
#   words.split.map(&:capitalize).join(' ')
# end
#
## in the second solution (&:method_name) is shorthand notation
# for {|item| item.method_name}

# Further exploration - without using capitalize method

def word_cap(word)
  (wrd_arr = word.downcase.split.map do |str|
    letters = str.chars
    letters[0]= letters[0].upcase
    letters.join
    #str.gsub(str.chr, str[0].upcase!)
  end)
  wrd_arr.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
