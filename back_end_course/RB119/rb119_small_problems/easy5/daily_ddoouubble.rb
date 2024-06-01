# Write a method that takes a tring argument and returns a
# new string that contains the value of the original string with all
# consecutive duplicate characters collapsed into a single character.
# You may not use String#squeeze or String#squeeze!.
#
# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''
#
# P
# input - string
# output - string after removing consecutive duplicate characters
#
# E
# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
#
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''
#
# D
# array of strings
#
# A
# convert string to array
# check adjecent letters are eqaul
# if it is equal delete
#   unless keep the letter
require 'pry'
def crunch(sentence)
  crunched_sentence = ''
  for i in (0..sentence.length - 1) do
    if sentence[i + 1] != sentence[i]
      crunched_sentence << sentence[i]
    else
      crunched_sentence
    end
  end
  crunched_sentence
end
# def crunch(text)
#   index = 0
#   crunch_text = ''
#   while index <= text.length
#     crunch_text << text[index] unless text[index] == text[index + 1]
#     index += 1
#   end
#   crunch_text
# end

p crunch('ddaaiillyy ddoouubbllee')  == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
