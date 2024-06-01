DEGREE = "\xC2\xB0"

def dms(angle)
  degree = angle.to_i
  minutes = (angle - degree)*60.to_f
  seconds = (minutes - minutes.to_i)*60
#   f_minutes = format('%02d', minutes)
#   f_seconds = format('%02d', seconds)
#  "#{degree}#{DEGREE}#{f_minutes}'#{f_seconds}\""
format(%(#{degree}#{DEGREE}%02d'%02d"),minutes,seconds)

end

# All test cases should return true
 p dms(30) #== %(30°00'00")
 p dms(76.73) == %(76°43'48")
 p dms(254.6) #== %(254°36'00")
 puts dms(93.034773) == %(93°02'05")
 puts dms(0) == %(0°00'00")
 puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")