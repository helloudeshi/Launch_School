=begin     
P:
I/P - str
O/P - list of all palindromic substrs 





=end 

def palindromes(str)
  sub_strs = substrings(str)
  sub_strs.select do |sub_str|
    sub_str == sub_str.reverse
  end

end

def substrings(str)
  all_substrs = []
  (0...str.size).each do |start_index|
    (start_index+1...str.size).each do |end_index|
      all_substrs << str[start_index..end_index]
    end
  end
all_substrs
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]