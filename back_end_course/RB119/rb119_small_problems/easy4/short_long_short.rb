def short_long_short(str_1, str_2)
  if str_1.size > str_2.size
    puts str_2+str_1+str_2
  else
    puts str_1+str_2+str_1
  end
end

short_long_short('abc', 'defgh') #== "abcdefghabc"
short_long_short('abcde', 'fgh') #== "fghabcdefgh"
short_long_short('', 'xyz') #== "xyz"