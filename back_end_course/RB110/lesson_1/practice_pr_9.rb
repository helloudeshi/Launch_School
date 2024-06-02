# Titrlize the string 
words = "the flintstones rock"

words_arr = words.split(' ')

titelized_words = words_arr.map do |word|
  word.capitalize!
end

p titelized_words.join(' ')
p words