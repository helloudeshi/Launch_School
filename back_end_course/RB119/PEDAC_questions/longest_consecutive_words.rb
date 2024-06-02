=begin   
Write a function called longestConsecutiveAscendingWords that takes 
a sentence as input and finds all consecutive word  where the succeeding word is
longer than the previous. The function should return an array of these pairs.
Punctuation marks should be considered part of a word
(e.g., "hello," and "hello" are different words). 

# Test cases
puts longest_consecutive_ascending_words("The quick brown fox jumps over the lazy dog").inspect 
# [ 'The', 'quick' ]
puts longest_consecutive_ascending_words("A journey of a thousand miles begins with a single step").inspect 
# [ 'A', 'journey' ]
puts longest_consecutive_ascending_words("Easy come easy go").inspect # [ 'Easy' ]
puts longest_consecutive_ascending_words("Tiny bird flew over the peaceful countryside")
.inspect # [ 'the', 'peaceful', 'countryside' ]

P:
input - sentence
output - longest consective words array

Rules :
 - succeeding word should be longer than the previous word
 - punctuation marks should be considered as a char
 - if there is no ascending word, retun longest word in the array

E:

D:
string --> word array

A:
- create two empty arrays to store words if it is longer consecive words 
and store current consective words 
- create word array form sentence 
- iterate array to check the length of the words
- if succeeeding word is lentghtier than current word, those two words append to 
  current array
  - then check the next word
  - if it is shorter than previous word, 
      - reassign largest_word array from current word array by checking the length of array
      - set current word starting from that word
    -start iteration again

    - return longest_word array


=end

def longest_consecutive_ascending_words(sentence)
  longest_words = []
  word_arr = sentence.split(' ')
  current_words = [word_arr[0]]
  (0...word_arr.size-1).each do |index|
    if word_arr[index+1].size > word_arr[index].size
      current_words << word_arr[index+1]
    else
    longest_words = current_words if longest_words.length < current_words.length
    current_words = [word_arr[index]]
  end
end
  longest_words = current_words if longest_words.length < current_words.length
  longest_words

end



 p longest_consecutive_ascending_words("The quick brown fox jumps over the lazy dog").inspect 
 # [ 'The', 'quick' ]
 puts longest_consecutive_ascending_words("A journey of a thousand miles begins with a single step").inspect 
# [ 'A', 'journey' ]
 puts longest_consecutive_ascending_words("Easy come easy go").inspect # [ 'Easy' ]
puts longest_consecutive_ascending_words("Tiny bird flew over the peaceful countryside").inspect 
# # [ 'the', 'peaceful', 'countryside' ]


###what if we should consider word length instead of array length???
