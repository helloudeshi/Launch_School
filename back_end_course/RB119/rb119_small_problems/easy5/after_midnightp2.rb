MINUTES_PER_DAY = 1440

def after_midnight(time_str)
  # time = time_str.split(':')
  # time_hr = time[0].to_i
  # time_min = time[1].to_i
  ### we can reduce above 3 lines by using line 8
  time_hr , time_min = time_str.split(':').map(&:to_i)
  (time_hr * 60 + time_min) % MINUTES_PER_DAY
end

def before_midnight(time)
  minutes = MINUTES_PER_DAY - after_midnight(time)
  return 0 if minutes == MINUTES_PER_DAY
  minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
