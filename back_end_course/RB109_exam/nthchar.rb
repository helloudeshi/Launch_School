def nth_char(stringarray)
  nth_char_word = ''
  return nth_char_word if stringarray == []

  i = 0
  loop do
    str = stringarray[i]
    nth_char_word += str[i]
    i += 1
    break if i == stringarray.size
  end
  nth_char_word
end
p nth_char(%w[yoda best has]) #== 'yes'
p nth_char([]) #== ''
p nth_char(['X-ray']) #== 'X'
p nth_char(%w[No No]) #== 'No'
p nth_char(%w[Chad Morocco India Algeria Botswana Bahamas Ecuador Micronesia]) #== 'Codewars'
