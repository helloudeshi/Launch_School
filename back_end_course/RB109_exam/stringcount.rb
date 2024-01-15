def solution(str, txt)
  # str_count = string.count(txt)
  puts findString(str, txt, 0)
end

def findString(str, text, pairs)
  return pairs if str.index(text).nil?

  current = str.index(text)
  newstring = str[current + text.length, str.length]
  pairscount = pairs += 1
  #   p "current: #{current}"
  #   p "newstring: #{newstring}"
  #   p "pairscount: #{pairscount}"

  findString(newstring, text, pairscount)
end

solution('aa_bb_cc_dd_bb_e', 'bb') # == 2 ???
solution('abcdeb', 'b') #== 2
solution('abcdeb', 'a') #== 1
solution('abbc', 'bb') #== 1 ???
solution('abbacc', 'a') #== 2 ???
solution('cccddaa', 'c') #== 3 ???
solution('ccddaa', 'c') #== 2 ???
