statement =  "The Flintstones Rock"
characters = statement.delete(' ')
p characters

char_hash ={}
characters.each_char do |letter|
  char_hash[letter] = characters.count(letter)
end

p char_hash

=begin
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.count(letter)
  result[letter] = letter_frequency if letter_frequency > 0
end
p result
=end