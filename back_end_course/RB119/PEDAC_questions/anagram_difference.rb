#
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
# PEDAC
#
# P:
# input - two strings of any length, could be empty
# return - integer (total number of characters that do not make anagrams) i.e. not coincide between two strings
#
# Algorithm
# -letter count = hash.new(0)
# - iterate through string1 for each character:
#   key is the character and value is the count of the character;
#   increment value for each char encountered
# -iterate through string2 for each character:
#    decrement the value of each key(charcter) for each char encountered
# -get the values of the hash into an array (this array may have 0, positive and or negative values)
# - sum of the absolute values of the array and return sum
#

def anagram_difference(str1, str2)
  letter_count = Hash.new(0)

  str1.each_char do |char|
    letter_count[char] += 1
  end

  str2.each_char do |char|
    letter_count[char] -= 1
  end
  letter_count.values.sum do |difference|
    difference.abs
  end
end

###
def letter_count(str)
  str.chars.sort.tally
end

def anagram_difference(str1, str2)
  str1_chars = letter_count(str1)
  str2_chars = letter_count(str2)
  total_count = 0
  count = 0
  str1_chars.each do |key1, value1|
    count = if str2_chars.include?(key1)
              (value1 - str2_chars[key1]).abs
            else
              value1
            end
    total_count += count
  end

  str2_chars.each do |key2, value2|
    total_count += value2 unless str1_chars.include?(key2)
  end
  total_count
end

p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('', 'ab') == 2
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10
p anagram_difference('oudvfdjvpnzuoratzfawyjvgtuymwzccpppeluaekdlvfkhclwau',
                     'trvhyfkdbdqbxmwpbvffiodwkhwjdjlynauunhxxafscwttqkkqw') == 42
p anagram_difference('fcvgqognzlzxhmtjoahpajlplfqtatuhckxpskhxiruzjirvpimrrqluhhfkkjnjeuvxzmxo',
                     'qcfhjjhkghnmanwcthnhqsuigwzashweevbegwsbetjuyfoarckmofrfcepkcafznykmrynt') == 50

# There are some logic and readability issues here:
# The intent of the code appears to be that min_str is one of our string arguments, and sorted.max is the other. But we're choosing these strings by different criteria - one is the shorter string, and the other is the string that is higher by Ruby's comparison method for strings, which goes character by character checking which is higher in the alphabet. So if we were to invoke anagram_difference('zodewars', 'hackerrank'), 'zodewars' is both min_str and sorted.max.
# hash.map is misleading because we don't want to transform the hash and we don't care about the return value of the block. For cases like this where we just want to do some work for every element, it's best to use each.
# In general, if we're repeatedly calling some method to get the same value, such as with sorted.max, it's more efficient and readable to assign it to a variable, e.g. big_str = sorted.max and then use that variable throughout.
# Naming variables more descriptively throughout will make it a lot more obvious what your code is doing. hash isn't just any Ruby hash, it's something like small_str_char_count. count itself could be common_characters.

def anagram_difference(str1, str2)
  sorted = [str1, str2].sort
  min_str = sorted.min_by { |str| str.size }
  hash = min_str.chars.each_with_object(Hash.new(0)) do |char, hash|
    hash[char] += 1
  end

  count = 0
  hash.map do |char, char_count|
    if sorted.max.count(char) == char_count
      count += char_count
    elsif sorted.max.include?(char) && sorted.max.count(char) != char_count
      count += (char_count - sorted.max.count(char)).abs
    end
  end
  (str1.size + str2.size) - count * 2
end

def anagram_difference(str1, str2)
  arr_str = [str1, str2]
  str_by_size = arr_str.sort_by { |str| str.size }
  small_str = str_by_size.first
  large_str = str_by_size.last
  small_str_char_count = small_str.chars.each_with_object(Hash.new(0)) do |char, hash|
    hash[char] += 1
  end

  common_chars = 0
  small_str_char_count.each do |char, char_count|
    common_chars += [char_count, large_str.count(char)].min
  end

  (str1.size + str2.size) - common_chars * 2
end
