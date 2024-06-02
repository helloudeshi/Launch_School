#
# Given a string and an integer i, write a method that splits the string up into a sentence of strings, where each string in the sentence contains a character of the argued string and every ith character after it:
#
# P
#   Input: String and an Inter (i)
#   Output: String ()
#
#   Take a String and an Integer and return a sentence where each word/sub-string is each character of the input String with every ith character joined.
#
#   Rules:
#   - If i == 0 Return "i cannot be less than 1"
#   - Empty string returns ''
#   - Spaces don't count as characters
#
# DS
#   Input String --> Array (of chars) --> Array (of words) --> String Output
#
# ALGO:
#   1. TRANSFORM input to an Array of Chars
#   2. GO OVER each char of Array of chars
#     a. For each char GET every ith char after it
#     b. TRANSFORM current char and every ith char to a String/word
#     c. STORE that new String/word
#   3. TRANSFORD stored Strings/words to a String with spaces between each word
#   4. RETURN that output String
# ---
#   0.5. SET words = []
#   1. TRANSFORM input to an Array of Chars (#split) (#chars)
#   2. GO OVER each char of Array of chars (#each_with_index)
#     - SET new_word = []
#     - GET current index of the current char
#     a. For each char GET every ith char after it
#       - ITERATE over each ith index starting from the current char index
#         - BREAK if the ith index is greater than the lenght of the Array of chars
#         - STORE the char[ith index] in new_word
#         - INCREMENT index by ith
#       - STORE new_word as a String to words
#   3. TRANSFORM stored Strings inwords to a String with spaces between each word
#   4. RETURN that output String
#
# p fragment("abcde", 1) == "abcde bcde cde de e"
# p fragment("a b c d e", 2) == "ace bd ce d e"
# p fragment("mary had a little lamb", 3) == "mydila ahatem raltlb ydila hatem altlb dila atem ltlb ila tem tlb la em lb a m b"
# p fragment("abcde", 0) == "i cannot be less than 1"
# p fragment("abcde", 100) == "a b c d e"
# p fragment("", 1) == ""

# def fragment(str, i)
#   words = []
#   arr_of_chars = str.chars
#   arr_of_chars.each_with_index do |el, ind|
#     new_word = []
#     current_index = ind
#     loop do
#       break if current_ind >= arr_of_chars.size
#       new_word << arr_of_chars[current_index]
#       current_index += i
#     end

#   end
# end

# p fragment("abcde", 1) == "abcde bcde cde de e"
# p fragment("a b c d e", 2) == "ace bd ce d e"
# p fragment("mary had a little lamb", 3) == "mydila ahatem raltlb ydila hatem altlb dila atem ltlb ila tem tlb la em lb a m b"
# p fragment("abcde", 0) == "i cannot be less than 1"
# p fragment("abcde", 100) == "a b c d e"
# p fragment("", 1) == ""

# edward
# Problem
#   Input:String and integer
#   Output: String
#   Implicit requirements:
#     - if i is less than 1, then return the string "i cannot be less than 1"
#     - if the string is empty then return an empty string
#     - ignore spaces for integer i offset
#   Explicit requirements:
#     - return string is a string with each letter of the original string starting the substring in the return string.
#
#
# Examples
#  fragment("a b c d e", 2) == "ace bd ce d e"
#  -start with "a" and get the characters that are positively displaced indexes multiples of 2 from "a".
#  - since "a" is at index 0, we need the values at index 0, 2, and 4, which are characters "a", "c", and "e"
#  - start with next element, which is "b"
#
# p fragment("mary had a little lamb", 3)== "mydila ahatem raltlb ydila hatem altlb dila atem ltlb ila tem tlb la em lb a m b"
# - start with "m" and get characters displaced idexes multiples of 3 from "m", ignore spaces. (ignore spaces for index offset) Indexes: 0,3,6,9,12,etc
#
# Data Structure
# - start with string, need an array of characters without spaces, need to return a string
#
# Algorithm
# - Take input_string and split it into an array of characters (chars) with spaces removed
# - If the input integer is less than 1 then return the key phrase
# - If the input string is empty , return an empty string
# - iterate over chars, add the current character to the current string being created (current_string)
#       - add the elements at integer multiple offset of chars
#       - when the return value is `nil` add the current_strings to the return_strings array and move on to the next character
#
# Code
# def fragment(string, i)
#   return "i cannot be less than 1" if i < 1
#   return "" if string.length == 0
#
#   chars = string.delete(" ").chars
#   current_string = ""
#   return_strings = []
#
#   chars.each_with_index do |char, char_index|
#     current_string << char
#     increment_multiple = 1
#     character_to_add = chars[char_index + (increment_multiple * i)]
#     while character_to_add != nil
#       current_string << character_to_add
#       increment_multiple += 1
#       character_to_add = chars[char_index + (increment_multiple * i)]
#     end
#     return_strings << current_string
#     current_string = ""
#   end
#
#   return_strings.join(" ")
# end

# joshua
#
# Given a string and an integer i, write a method that splits the string up into a sentence of strings, where each string in the sentence contains a character of the argued string and every ith character after it:
#
#
# PROBLEM
# Each character in the input string will begin a word in the putput sentence. The next letter in the word will by the i number later, and so forth until the end.
#
# Input: string
# Output: strings
#
# Requirements:
# return error message if integer is '0'
# return '' if input is ''
#
# EXAMPLES
# p fragment("abcde", 1) == "abcde bcde cde de e"
# p fragment("a b c d e", 2) == "ace bd ce d e"
# p fragment("mary had a little lamb", 3) == "mydila ahatem raltlb ydila hatem altlb dila atem ltlb ila tem tlb la em lb a m b"
# p fragment("abcde", 0) == "i cannot be less than 1"
# p fragment("abcde", 100) == "a b c d e"
# p fragment("", 1) == ""
#
# DATA
# Need an array of strings to hold the data while it is being constructed.
#
# ALGORITHM
# Convert input string into array of characters
# Create array to hold results
# Iterate over the array by index forming new strings using initial letter plus the ith consecutive number until end of string
# This will require two loops, first covers every letter, second selected every ith letter after the index
# Convert array of strings to a string with a seperator ' '
#
# CODE
#
# def fragment(str, ith)
#   holding_arr = []
#   str_arr = str.chars
#   current_char = 0
#   new_word = ''
#   if ith < 1
#     return "i cannot be less than 1"
#   elsif str.empty?
#     return ''
#   else
#     loop do
#       iterating_char = current_char
#       loop do
#         p iterating_char
#         new_word << str_arr[iterating_char]
#         iterating_char += ith
#         break if iterating_char > str.length
#       end
#       holding_arr << new_word
#       current_char += 1
#       break if current_char > str.length
#     end
#   end
#   str_arr.join(' ')
# end
#
# p fragment("abcde", 1) == "abcde bcde cde de e"
# p fragment("a b c d e", 2) == "ace bd ce d e"
# p fragment("mary had a little lamb", 3) == "mydila ahatem raltlb ydila hatem altlb dila atem ltlb ila tem tlb la em lb a m b"
# p fragment("abcde", 0) == "i cannot be less than 1"
# p fragment("abcde", 100) == "a b c d e"
# p fragment("", 1) == ""
#

# saltanat
# P
# Input: string and integer
# Output: string sentence
#
# Rules:
# - take a string and integer and return the string sentence
# - words in sentence should start from the first char in an input string
# - then add every integer-ordered number to this letter to build the first word
# - the second word will consist the character number two and other letters that are integer-ordered from this char
# - continue till the last character
# - do not count the spaces as characters
# - if input string is empty return empty
# - if integer is less than 1, return "i cannot be less than 1"
#
# E
# "mary had a little lamb", 3 --> mydila ...
# "abcde", 100 --> a b c d e
#
# D
# begin: string
# middle: array to contain words
# end: string sentence
#
# A
# - RETURN "i cannot be less than 1", if input integer is less than 1
# - CREATE an array of characters without spaces
#   - iterate over array of chars, and remove spaces
# - CREATE words for result string, characters size times
#   - create a variable word and assign to current character
#   - add current char to variable word
#   - iterate over array indices starting from the current index and count every integer char in array and add to word
#   - return this word to array
# - RETURN the array of words with spaces
#   - use method #join with space
#
# C
# def fragment(string, integer)
#   return "i cannot be less than 1" if integer < 1
#
#   arr = string.chars
#   arr.delete(' ')
#
#   words = []
#   arr.size.times do |start|
#     word = arr[start]
#
#     loop do
#       start += integer
#       break if start >= arr.size
#       word << arr[start]
#     end
#
#     words << word
#   end
#
#   words.join(' ')
# end
#

# udeshika
# P:
# input - string  integer
# out put - string consisiting characters of the original string
#
# E:
# p fragment("abcde", 1) == "abcde bcde cde de e"
# --> 'abcde' i = 1 --> for 0th index -->0..4charcters
# p fragment("a b c d e", 2) == "ace bd ce d e"
# --> i = 2 --> 'ace'
# p fragment("mary had a little lamb", 3) == "mydila ahatem raltlb ydila hatem altlb dila atem ltlb ila tem tlb la em lb a m b"
# p fragment("abcde", 0) == "i cannot be less than 1"
# p fragment("abcde", 100) == "a b c d e"
# -->
# p fragment("", 1) == ""
#
# edge cases:
#  - for i =0 --> "i cannot be less than 1"
#  -for empty string --> return empty string
#
#
# D:
#
#
# A:
# -  convert string to array
# - initialize new_string  variable and word_array to store new_strings
# - iterate thourgh array and add charcters to new_string
#    - add `ith` character in each iteration
#    - append to ith character to new_string until it goes to str.size
#    - before going to next itearion, sore new_string in word_array and clear new_string
#    - go to next iteration
#    - after all iterations join word_array
# -
#
#
# C:
#
#
# def fragment(str, i)
#   word_array =[]
#   new_string = ''
#
#   str.chars.each_with_index do |char, index|
#     new_string << str[index]
#   end
#   new_string
#
# end
#
# def fragment(str, i)
#   word_array =[]
#
#   str.chars.each_with_index do |char, index|
#     new_string = ''
#     # some iteration to build new_string
#     word_array << new_string
#   end
#
#
# end
#
#
#
# def fragment(string, i)
#   return "i cannot be less than 1" if i < 1
#   return "" if string.length == 0
#
#   chars = string.delete(" ").chars
#   current_string = ""
#   return_strings = []
#
#   chars.each_with_index do |char, char_index|
#     current_string << char
#     increment_multiple = 1
#     character_to_add = chars[char_index + (increment_multiple * i)]
#     while character_to_add != nil
#       current_string << character_to_add
#       increment_multiple += 1
#       character_to_add = chars[char_index + (increment_multiple * i)]
#     end
#     return_strings << current_string
#     current_string = ""
#   end
#
#   return_strings.join(" ")
# end
#
# p fragment("abcde", 1) == "abcde bcde cde de e"
# p fragment("a b c d e", 2) == "ace bd ce d e"
# p fragment("mary had a little lamb", 3) == "mydila ahatem raltlb ydila hatem altlb dila atem ltlb ila tem tlb la em lb a m b"
# p fragment("abcde", 0) == "i cannot be less than 1"
# p fragment("abcde", 100) == "a b c d e"
# p fragment("", 1) == ""
#
# =#
# Given a string and an integer i,
# write a method that splits the string up into a sentence of strings,
#  where each string in the sentence contains a character of
#  the argued string and every ith character after it:
#
# p fragment("abcde", 1) == "abcde bcde cde de e"
# p fragment("a b c d e", 2) == "ace bd ce d e"
# p fragment("mary had a little lamb", 3) == "mydila ahatem raltlb ydila hatem altlb dila atem ltlb ila tem tlb la em lb a m b"
# p fragment("abcde", 0) == "i cannot be less than 1"
# p fragment("abcde", 100) == "a b c d e"
# p fragment("", 1) == ""
#
# P:
# input - string  integer
# out put - string consisiting characters of the original string
#
# E:
# p fragment("abcde", 1) == "abcde bcde cde de e"
# --> 'abcde' i = 1 --> for 0th index -->0..4
# p fragment("a b c d e", 2) == "ace bd ce d e"
# --> i = 2 --> 'ace'
# p fragment("mary had a little lamb", 3) == "mydila ahatem raltlb ydila hatem altlb dila atem ltlb ila tem tlb la em lb a m b"
# p fragment("abcde", 0) == "i cannot be less than 1"
# p fragment("abcde", 100) == "a b c d e"
# -->
# p fragment("", 1) == ""
#
# edge cases:
#  - for i =0 --> "i cannot be less than 1"
#  -for empty string --> return empty string
#
#
# D:
#
#
# A:
# -  convert string to array
# - initialize new_string  variable and word_array to store new_strings
# - iterate thourgh array and add charcters to new_string
#    - add `ith` character in each iteration
#    - append to ith character to new_string until it goes to str.size
#    - before going to next itearion, sore new_string in word_array and clear new_string
#    - go to next iteration
# -
#
#
#
# C:
#

def fragment(string, i)
  return 'i cannot be less than 1' if i <= 0

  word_array = []
  str = string.delete(' ')

  str.chars.each_index do |index|
    new_string = ''
    counter = index
    loop do
      new_string << str[counter]
      counter += i
      break if counter >= str.size
    end
    word_array << new_string
  end
  word_array.join(' ')
end

p fragment('abcde', 1) == 'abcde bcde cde de e'
p fragment('a b c d e', 2) == 'ace bd ce d e'
p fragment('mary had a little lamb',
           3) == 'mydila ahatem raltlb ydila hatem altlb dila atem ltlb ila tem tlb la em lb a m b'
p fragment('abcde', 0) == 'i cannot be less than 1'
p fragment('abcde', 100) == 'a b c d e'
p fragment('', 1) == ''
