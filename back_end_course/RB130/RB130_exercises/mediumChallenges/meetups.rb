# Pro: construct a that represent a meetup date
# i/p - take month and a year
# o/p - determmine exact date of the meeting in the specific month of the year
#
# note:  The descriptors that may be given are strings: 'first', 'second', 'third', 'fourth', 'fifth', 'last', and 'teenth'.
# The case of the strings is not important;
# that is, 'first' and 'fIrSt' are equivalent.
# The days of the week are given by the strings 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', and 'Sunday'.
#
# E: class - Meetup with a constructor taking year and a month
#    method - day(weekday,shedule)  - should return date for the given day
#
# D:
#
# A:
#  Date.civil(2024,02,-1) --> from this it can be determine whether the year is leap or not
#  - to get number of day `days` can be used
#  - to check whether it is a given day can use `friday?`
#
require 'date'

class Meetup
  attr_reader :year, :month

  def initialize(year, month)
    @year = year
    @month = month
    @number_of_days = Date.civil(year, month, -1)
  end

  def day(weekday, shedule)
    
    1.upto(number_of_days).day.each do |dt|
      if shedule.downcase == 'first'
        return Date.civil(year, month, dt) if find_day(weekday, dt)
      elsif shedule.downcase == 'second'
        return Date.civil(year, month, dt + 7) if find_day(weekday, dt)
      elsif shedule.downcase == 'third'
        return Date.civil(year, month, dt + 14) if find_day(weekday, dt)
      elsif shedule.downcase == 'fourth'
        return Date.civil(year, month, dt + 21) if find_day(weekday, dt)
      elsif shedule.downcase == 'fifth'
          if find_day(weekday, dt) && (dt + 28 <= number_of_days)
            return Date.civil(year, month, dt + 28)
          else 
            return nil 
          end
        elsif shedule.downcase == 'teenth'
          return Date.civil(year, month, dt) if find_day(weekday, dt) && [13,14,15,16,17,18,19].include?(dt)
        else  
          return Date.civil(year, month, -dt) if find_day(weekday, dt)
      end
    end
  end

  def find_day(weekday, d)
    case weekday.downcase
    when 'monday'
      Date.new(year, month, d).monday?
    when 'tuesday'
      Date.new(year, month, d).tuesday?
    when 'wednesday'
      Date.new(year, month, d).wednesday?
    when 'thursday'
      Date.new(year, month, d).thursday?
    when 'friday'
      Date.new(year, month, d).friday?
    when 'saturday'
      Date.new(year, month, d).saturday?
    else
      Date.new(year, month, d).sunday?
    end
  end

  def find_shedule_date(shedule)
    case shedule.downcase
    when 'first '
      1
    when 'second '
      2
    when 'third '
      3
    when 'fourth '
      4
    when 'fifth '
      5
    when 'teenth'
      [13, 14, 15, 16, 17]
    end
  end
end

date = Meetup.new(2015, 8)
p date.find_day('monday', 3)
p Date.civil(2024,8,-1).day
