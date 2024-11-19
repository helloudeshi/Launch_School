# P:
# - create a clock independant from the date
#  - able to add minutes, substrct minute from given clock object
#  - when adding or substracting minutes, should not mutate the clock
#  - we have to create a new clock
#  - Two clock objects which have same time, should equal to each other
#
#  Note: Use arithmatics only
#
# E:
# In the clock class
# class methods
#   - at(par) - is creating a new clock object
#
#   # Clock.at(0) - 50 --> returning a new clock
#
#   there should be insatance method
#   - - +/- (minutes)
#   --> equal operator
#   --> to_s
#
# D:
# Input - integer
# output time - 24 hour clock string
#
# A:
# - at method
# - can be one or two parameters (hours, minutes = 00)
# ---> parameters should be given in 24 hour format
# - create a clock object
#
# - to_s
# --> convert hours and minutes to strings output
#
# - +(minutes )
# --> clone current object
# --> minutes > 60
#    from the given clock, keep subtracting 60 until its less than 60 , each substraction we need to add 1 to hours to the new clock object.
#    --> when the minutes are less than 60 we need to add it to new clocks minutes
#    return new clock
#
#    clock = Clock.at(0, 30) - 60
#     assert_equal '23:30', clock.to_s
#
#     24:30 - 60
#     clone new clock object
#     until counter == 60
#     --> 24:30 - 1 --> 24:29 - 1 --> 24:28..24:00 - 1 --> 23:59..
#         counter == 1 -->   counter == 2 --> counter == 30 --> counter == 31..
#       1. clone new clock object
#       2. subtract 1 from minutes until minutes becomes -1
#       3. when minutes is -1, subtract 1 hour and add 59 to minutes
#       4. start back at step 1
#       5. return new clock
#
#   Formatting:
#   "hours:minutes"
#   hours/min has single digit: 0digit --> 01, 02
#
# C:
#

# puts sprintf('%.2f')  # => "3.14"
# hours = 12
# minutes = 9
#  p [sprintf('%.2d', hours) ,sprintf('%.2d', minutes)].join(':')
# =end

class Clock
  attr_accessor :hours, :minutes

  def initialize(h, m = 0)
    @hours = h
    @minutes = m
  end

  def self.at(h, m = 0)
    new(h, m)
  end

  def +(other)
    h = 0
    until other < 59
      h += 1
      other -= 60
    end
    total_hours = h + hours
    new_hours = total_hours

    new_hours -= 24 until new_hours < 24 if total_hours >= 24

    new_min = other + minutes
    Clock.new(new_hours, new_min)
  end

  def -(other)
    other -= 1440 until other <= 1440 if other > 1440
    result_min = convert_to_minutes(hours, minutes) - other
    convert_to_time(result_min)
  end

  def convert_to_minutes(h, m = 0)
    h = 24 if h == 0
    h = 24 if h == 0
    h * 60 + m
  end

  def convert_to_time(min)
    h = 0
    m = 0
    if min >= 1440
      h = 0
      m = min - 1440
    else
      until min <= 59
        h += 1
        min -= 60
      end
      m = min
    end
    Clock.new(h, m)
  end

  def to_s
    [format('%.2d', hours), format('%.2d', minutes)].join(':')
  end

  def ==(other)
    hours == other.hours && minutes == other.minutes
  end
end

# p Clock.at(0).to_s
clock = Clock.new(0)
p clock.convert_to_minutes(0, 50)
p clock.convert_to_time(1490)
p clock - 50
p Clock.at(10) + 3061
