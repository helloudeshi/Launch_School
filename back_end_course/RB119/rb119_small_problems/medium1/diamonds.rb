=begin   
P: input - odd integer (n)
 output - displays a 4 pointed diamond in a n*n grid
 
 E: 
 diamond(1)

    *

    diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

Algo:
- iterate through (0..n)- verical lines (y)
- sub iterate through (0..n) - horizontal line (x)
- take the middle point of the inputs odd number
- both iterations middle line should be filled with '*'
- 

=end

# def diamonds(num)
#   spaces = ' '
#   stars = '*'
#   middle = num/2 +1 
#   gap = num - middle
#   (1..num).each do |y|
#     (1..num).each do |x|
#     if x == middle || y == middle
#      print "*"
#     else 
#       print ' '
#     end
#     end 
#     puts ''
#   end
# end

def diamonds(num)
  spaces = ' '
  stars = '*'
  middle = num / 2
  (0..middle).each do |x|
    puts spaces * (middle - x) + stars * (2 * x + 1) + spaces * (middle - x)
  end
  (1..middle).each do |y|
    puts spaces * y + stars * (num - (2 * y)) + spaces * y
  end
end

 diamonds(5)
 diamonds(9)
 diamonds(11)
