# def leap_year?(year)
#   return true if year % 400 == 0

#   if year % 100 != 0 && year % 4 == 0
#     true
#   else
#     false
#   end
# end

# def leap_year?(year)
#   (year%400 ==0) || (year % 100 != 0 && year % 4 == 0)
# end

def leap_year?(year)
  if year % 4 == 0
    return false if year % 100 == 0 && year % 400 != 0

    true
  else
    false
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240_000) == true
p leap_year?(240_001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
