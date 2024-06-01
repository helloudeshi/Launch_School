def word_to_digit(sentence)
word_num_hash = { 'zero'=> 0, 'one'=> 1, 'two'=> 2, 'three'=>3, 'four'=> 4, 'five'=>5, 'six'=>6, 'seven'=>7, 'eight'=>8, 'nine'=>9}
#  sentence_arr = sentence.split
#  word_to_num = []
#  sentence_arr.each do |word|

#   if word_num_hash.keys.include?(word)
#     word_to_num << word_num_hash[word]
#   else 
#     word_to_num << word
#   end
# end
# word_to_num.join(' ')
regex_pattern = Regexp.union(word_num_hash.keys)

result = sentence.gsub(regex_pattern){|match| word_num_hash[match]}
result
end

# p word_num_hash
 p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'