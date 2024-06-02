# Create a method that takes two string arguments and
# returns the number of times that the second string
# occurs in the first string. Note that overlapping
# strings don't count: 'babab' contains 1 instance of 'bab',
# not 2.
#
# You may assume that the second argument is
# never an empty string.
#
# p count_substrings('babab', 'bab') == 1
# p count_substrings('babab', 'ba') == 2
# p count_substrings('babab', 'b') == 3
# p count_substrings('babab', 'x') == 0
# p count_substrings('babab', 'x') == 0
# p count_substrings('', 'x') == 0
# p count_substrings('bbbaabbbbaab', 'baab') == 2
# p count_substrings('bbbaabbbbaab', 'bbaab') == 2
# p count_substrings('bbbaabbbbaabb', 'bbbaabb') == 1
#
# P:
# - input- 2 strings
#  - output - count of occurances where second str occurs in 1st str
#
#  Rules: overlapping strings don't count
#         second argument is not an empty string
#
# E:
# p count_substrings('bababab', 'bab') == 2
# --> 'bab', 'a', 'bab'
#
# D:
#
# A:
#  - itearte over 1st str
#   -check whether the 1st char of 2nd str is match with 1st str chars
#     -if it is matched, check the second char until geting all chars matching with 1st str
#       -if all chars match with 1st str increase substr_count by 1
#   - repeat above steps until 1st str is over
#   return substr_count
#
# C:

def count_substrings(str, sub_str)
  sub_str_count = 0
  sub_idx = 0
  main_idx = 0
  main_idx_start = 0
  while main_idx < str.size
    # p "ms:#{main_idx_start}, m:#{main_idx}, s:#{sub_idx}"
    if sub_str[sub_idx] == str[main_idx]
      sub_idx += 1
      if sub_idx == sub_str.length
        sub_str_count += 1
        sub_idx = 0
        main_idx_start = main_idx + 1
        main_idx = main_idx_start - 1
      end
    else
      main_idx_start += 1
      sub_idx = 0
      main_idx = main_idx_start - 1
    end
    main_idx += 1
  end
  sub_str_count
end

p count_substrings('babab', 'bab') == 1
p count_substrings('babab', 'ba') == 2
p count_substrings('babab', 'b') == 3
p count_substrings('babab', 'x') == 0
p count_substrings('babab', 'x') == 0
p count_substrings('', 'x') == 0
p count_substrings('bbbaabbbbaab', 'baab') == 2
p count_substrings('bbbaabbbbaab', 'bbaab') == 2
p count_substrings('bbbaabbbbaabb', 'bbbaabb') == 1
