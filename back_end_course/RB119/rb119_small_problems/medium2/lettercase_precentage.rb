# P: - I/p - string
#       o/p - hash contatining percentage of characters lowercase, uppercase and neither of those
# Algo :
# - create local variable to count lowercase, uppercase and neither of characters
# - itearate over string,
# - if it is lowercase append to lowercase
#   -uppercase append to uppercase
#   -neither - append to neither variable
# - then create a new hash
# and return it with
#  - case as the key and percentage of those count as value
#
def letter_percentages(str)
  lowercase = ''
  uppercase = ''
  neither = ''
  case_percentage = {}
  str.each_char do |char|
    if char =~ /[a-z]/
      lowercase << char
    elsif char =~ /[A-Z]/
      uppercase << char
    else
      neither << char
    end
  end

  case_percentage[:lowercase] = (lowercase.size.to_f / str.size.to_f) * 100
  case_percentage[:uppercase] = (uppercase.size.to_f / str.size.to_f) * 100
  case_percentage[:neither] = (neither.size.to_f / str.size.to_f) * 100
  case_percentage
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
