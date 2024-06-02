# p [%w[a cat b c], ['b', 2], ['a', 'car', 'd', 3], %w[a car d]].sort


# Given two words, how many letters do you have to remove from them to make them anagrams?
#
# anagram_difference('', '') == 0
# anagram_difference('a', '') == 1
# anagram_difference('', 'a') == 1
# anagram_difference('ab', 'a') == 1
# anagram_difference('ab', 'ba') == 0
# anagram_difference('ab', 'cd') == 4
# anagram_difference('aab', 'a') == 2
# anagram_difference('a', 'aab') == 2
# anagram_difference('codewars', 'hackerrank') == 10
# anagram_difference("oudvfdjvpnzuoratzfawyjvgtuymwzccpppeluaekdlvfkhclwau", "trvhyfkdbdqbxmwpbvffiodwkhwjdjlynauunhxxafscwttqkkqw") == 42
# anagram_difference("fcvgqognzlzxhmtjoahpajlplfqtatuhckxpskhxiruzjirvpimrrqluhhfkkjnjeuvxzmxo", "qcfhjjhkghnmanwcthnhqsuigwzashweevbegwsbetjuyfoarckmofrfcepkcafznykmrynt") == 50
# PEDAC:
#
# P:
# - write a method that takes 2 strings
# - method returns the numbers of letters that have to be removed from them to make them anagrams
#
# E:
# anagram_difference('', '') == 0
# - if both empty strings, return 0
#
# anagram_difference('a', '') == 1
# anagram_difference('', 'a') == 1
# => if 1st arg or 2nd arg is "", return 1
#
# anagram_difference('ab', 'a') == 1
# => if we remove b, both words are anagrams
#
# anagram_difference('ab', 'ba') == 0
# => 0 because they're already anagrams
#
# anagram_difference('ab', 'cd') == 4
# => because they're totally different
#
# anagram_difference('aab', 'a') == 2
# => from 1st one, remove ab
#
# anagram_difference('a', 'aab') == 2
# => from 2nd one remove ab
#
# anagram_difference('codewars', 'hackerrank') == 10
#
#
# anagram_difference("oudvfdjvpnzuoratzfawyjvgtuymwzccpppeluaekdlvfkhclwau", "trvhyfkdbdqbxmwpbvffiodwkhwjdjlynauunhxxafscwttqkkqw") == 42
# anagram_difference("fcvgqognzlzxhmtjoahpajlplfqtatuhckxpskhxiruzjirvpimrrqluhhfkkjnjeuvxzmxo", "qcfhjjhkghnmanwcthnhqsuigwzashweevbegwsbetjuyfoarckmofrfcepkcafznykmrynt") == 50
#
# DS:
# input: str
# intermediate step: A hash to keep track of character counts, where the keys are characters and the values are the counts of each character
# output: int
#
# N:
#
# A:
# - if both strs are empty, return ""
# - if 1st arg or 2nd arg is "", return 1
#
# - if both strings are totally different, I have to return 1 string's size * 2
#
# - sort boths strings
# - compare the number of characters that you have in both strings
# - count all the chars that are in the first string, get the number
#
# -use the array made from the 1st str
# - convert the first string into a tally where keys are characters and values are number of times the char occurs
#   - for each character in the tally, see how many times it appears in the second string. if it's not equal, add the difference to our counter
# - count the chars that were not in the 1st string but are in the second string (new characters), get the nubmer
#   - Select out only each character in the 2nd string not present in the first string tally.
#
#
# - sum both these numbers and return
#
# -deal with special - cases LAST

# def anagram_difference(str1, str2)
#   # return 0 if str1.empty? && str2.empty?
#   # return 1 if str1.empty? || str2.empty?

#   first = str1.chars.sort.tally#.values.sum
#   second = {}
#   str2.char.sort.each do |char|
#     if first.keys.include?(char)

# end
# def letter_count(str)
#   str.chars.sort.tally
# end

# def anagram_difference(str1, str2)
#   str1_chars = letter_count(str1)
#   str2_chars = letter_count(str2)
#   total_count = 0
#   count = 0
#   str1_chars.each do |key1, value1|
#     if str2_chars.include?(key1)
#       count = (value1 - str2_chars[key1]).abs
#     else
#       count = value1
#     end
#     total_count += count
#   end

#   str2_chars.each do |key2, value2|
#     total_count += value2 unless str1_chars.include?(key2)
#   end
#   total_count
# end


# p anagram_difference('', '') == 0
# p anagram_difference('a', '') == 1
# p anagram_difference('', 'a') == 1
# p anagram_difference('', 'ab') == 2
# p anagram_difference('ab', 'a') == 1
# p anagram_difference('ab', 'ba')  == 0
# p anagram_difference('ab', 'cd') == 4
# p anagram_difference('aab', 'a') == 2
# p anagram_difference('a', 'aab') == 2
# p anagram_difference('codewars', 'hackerrank') == 10
# p anagram_difference("oudvfdjvpnzuoratzfawyjvgtuymwzccpppeluaekdlvfkhclwau", "trvhyfkdbdqbxmwpbvffiodwkhwjdjlynauunhxxafscwttqkkqw") == 42
# p anagram_difference("fcvgqognzlzxhmtjoahpajlplfqtatuhckxpskhxiruzjirvpimrrqluhhfkkjnjeuvxzmxo", "qcfhjjhkghnmanwcthnhqsuigwzashweevbegwsbetjuyfoarckmofrfcepkcafznykmrynt") == 50

# p second = 'hackerrank'.chars.sort
# p first  = 'codewars'.chars.sort
# # a: 1, h: 1, k: 2, n: 1, r: 1
# # d: 1 o: 1, s: 1, w: 1

#
# Given an array of n positive integers and a positive integer,
# find the minimal length of a contiguous subarray
# for which the sum >= integer.
#
# p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
# p minSubLength([1, 10, 5, 2, 7], 9) == 1
# p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
# p minSubLength([1, 2, 4], 8) == 0
#
# P
# I/P array of postive integers and a Integer
# Min of length of subarray
#
# E :
# p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
# ---> 4+3= 7 --> min length of subarray =2
# p minSubLength([1, 10, 5, 2, 7], 9) == 1
# --> 10 >= 9 min length is  1
# p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
# --> [100,1,0,200]
# p minSubLength([1, 2, 4], 8) == 0
# ---> this is output 0 since [1+2+4] <= 8
#
# D
# input = integer array
# output -integer
#
# A
#
p ([{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.any? do |key, value|
    value[0] == key.to_s
  end
end)

# => [{ :c => "cat" }]
