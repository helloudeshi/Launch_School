# P:
# I/p - string of digits
# o/p - all possible consective number series of specified length
#
# Notes : if specified length is longer than given digits it should throw en error.
# E:
# '01234' --> 3 digit series
#   012, 123, 234
#   --> 4 digit
#     0123, 1234
#   - constructor method with one parameter
#   - one instance method
#
#
#
# D:output should be arrays of array
#
# A:
# - take the given string and specified number
# - then slice the string according to the number given
# - append those in to a new array
#

class Series
  def initialize(num_str)
    @num_str = num_str
  end

  def slices(int)
    raise ArgumentError if int > @num_str.size

    result = []
    0.upto(@num_str.size - int).each do |ind|
      slice_arr = []
      slice_arr << @num_str.slice(ind, int).split('')
      (slice_arr.map do |arr|
         result << arr.map(&:to_i)
       end)
    end
    result
  end
end

series = Series.new('80028')
p series.slices(3)
