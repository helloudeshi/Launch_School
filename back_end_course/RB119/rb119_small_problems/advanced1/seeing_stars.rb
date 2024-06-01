# Write a method that displays an 8-pointed star in an nxn grid,
# where n is an odd integer that is supplied as an argument to the method.
# The smallest such star you need to handle is a 7x7 grid.
#
# example
# star(7)
#
# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *
#
# star(9)
#
# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *
#
# P:
# input - integer (n)
# output - n*n grid with '*' printed in pattern
#
# E:
#
# D:
#
# A:
# - create grid of n*n
# - print stars with the pattern
#
# C:
#

def create_grid(num)
  for i in (1..num) do
    print '|'
    for j in (1..num) do
      if check(i, j, num)
        print ' * |'
      else
        print '   |'
      end
    end
    puts ''
    for k in (1..num) do
      print '-'
      print '-'
      print '-'
      print '-'
    end
    puts ''
 end
end

def check(x, y, num)
  y == x || y == (num / 2) + 1 || y == num - (x - 1) || x == (num / 2) + 1
end

create_grid(7)
