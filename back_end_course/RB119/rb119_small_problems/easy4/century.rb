def century_suffix(num)
  return 'th' if [11,12,13].include?(num%100)
  last_digit = num%10
  case last_digit
  when 1
    'st'
  when 2
    'nd'
  when 3
    'rd'
  else
    'th'
  end
end

# p century_suffix(45)
# p century_suffix(121)


def century(year)
  century_num = year/100
  
  if year % 100 == 0
     "#{century_num.to_s}th"
  else 
    century_num += 1
     "#{century_num.to_s}#{century_suffix(century_num)}"
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'