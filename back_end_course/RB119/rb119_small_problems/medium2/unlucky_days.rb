=begin   
Pro :
 - 

Algo :
- use class 'date' 
- create count variable to count all 13th fridays
- iterate over 12 months 
-create 13th day of each month in given year 
 (use Date.new(year,month,13)format)
 -use friday? method to determine whether it is 
 friday or not 
 - if 13th is friday add 1 to count variable 

=end

require 'date'

def friday_13th(year)
  count = 0
  (1..12).each do |month|
    date = Date.new(year, month, 13)
    count += 1 if date.friday?
  end
  count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2