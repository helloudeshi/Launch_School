# MINUTES_PER_DAY = 1440

# def time_of_day(num)
#   if num >= 0 && num <= 1439
#     hr, minute = num.divmod(60)
#   elsif num > 1439
#     hr, minute = (num % MINUTES_PER_DAY).divmod(60)
#   elsif num < 0  && num >= (-1439)
#     hr, minute = (MINUTES_PER_DAY - num.abs).divmod(60)
#   else
#     hr, minute = (MINUTES_PER_DAY - (num.abs % MINUTES_PER_DAY)).divmod(60)
#   end
#   format('%.2d:%.2d', hr, minute)
# end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = 1440

def normalizing_num(minutes)
  while minutes < 0
    minutes += MINUTES_PER_DAY
  end
  minutes % MINUTES_PER_DAY
end

def time_of_day(delta_minutes)
  delta_minutes = normalizing_num(delta_minutes)
  hr, minute = delta_minutes.divmod(60)
  format('%02d:%02d', hr, minute)
end

# require 'date'
# def time_of_day(delta_minutes)
#   (Date.parse("Sunday") + Rational(delta_minutes, 1440)).strftime("%A %H:%M")
# end




p time_of_day(0) == '00:00'
p time_of_day(-3) #== '23:57'
p time_of_day(35) #== '00:35'
p time_of_day(-1437) #== '00:03'
p time_of_day(3000) #== '02:00'
p time_of_day(800) #== '13:20'
p time_of_day(-4231) #== '01:29'
p time_of_day(-1445)
