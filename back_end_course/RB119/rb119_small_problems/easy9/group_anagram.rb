=begin    
- create an empty arr to store equal letters words
- assign 1st element to current word and apend it as anagram_group_arr and delete it 
- itearate through rest of array and select words 
  - use supportive method to check if it is anagaram 
  -if it is anagram, append to group_anagram and delete it 
- after check 1st word with all,
      -return group_anagram
      - reset group_anagram arr
  - get the rest of the array,
      - if it is not empty, repeat above steps 
   - 
=end

def group_anagram(word_arr)
  loop do 
  group_anagram_arr = []
  current_word = word_arr.shift
  group_anagram_arr << current_word
  group_anagram_arr << ( word_arr.select {|word| anagram_words(current_word,word)})
  word_arr =  word_arr.delete_if {|word| anagram_words(current_word,word)} 
  break if  word_arr.empty? 
  p group_anagram_arr.flatten
  end  

end



def anagram_words(word_1,word_2)
  word_1.chars.sort == word_2.chars.sort
end

words = %w[demo none tied evil dome mode live
           fowl veil wolf diet vile edit tide
           flow neon]

group_anagram(words)

