#   problem -
# when we given the length of the traingles it should
#   output whether it is equilateral, isosceles or scaalene
#
#   Notes: to be a valid traingle,
#    - each side must be > 0
#    - sum of the lengths of any two sides must be greater the remainin side
#    -
#
# E :
#  - Traingle class
#   -constructor method/ kind method to return the trainglr type
#
# D:
# - lengths are stored in an array
#
# Algo :
#  - check values for are those > 0
#  - then check given values represent a traingle
#  - if it is a traingle,
#   - check the kind
#   return the kind
#
#

class Triangle
  attr_reader :lengths

  def initialize(len1, len2, len3)
    @lengths = [len1, len2, len3]
    raise ArgumentError, 'Invalid triangle lengths' unless a_triangle?
  end

  def kind
    if lengths.uniq.size == 1
      'equilateral'
    elsif lengths.uniq.size == 2
      'isosceles'
    else
      'scalene'
    end
  end

  private

  def a_triangle?
    
    lengths.min > 0 &&
      lengths[0] + lengths[1] > lengths[2] &&
      lengths[0] + lengths[2] > lengths[1] &&
      lengths[1] + lengths[2] > lengths[0]
  end
end

triangle1 = Triangle.new(3, 4, 5)
p triangle1.kind
