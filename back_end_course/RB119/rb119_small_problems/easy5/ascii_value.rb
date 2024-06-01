def ascii_value(str)
  ascii_sum = 0
  str.each_char do |letter|
    ascii_sum += letter.ord
  end
  ascii_sum
end

# p ascii_value('Four score') == 984
# p ascii_value('Launch School') == 1251
# p ascii_value('a') == 97
# p ascii_value('') == 0

=begin  
** further exploration 
`Integer#chr` method can be used to convert in convert to Integer
into character, which is represented by ascii value of that integer.
 
- but if string is long, `chr` method return first charcter 

 

=end

char = 'hello'
p char.ord.chr #== char
p 255.chr # "\xFF"
p 0.chr # "\x00"