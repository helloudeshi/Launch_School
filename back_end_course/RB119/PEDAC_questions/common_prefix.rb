# write a method to find the longest common prefix string
# among an array of strings
# - all letters are down case
# test cases:
#
# p common_prefix(['flower', 'flow', 'flight']) == 'fl'
# p common_prefix(['dog', 'racecar', 'car']) ==''
# p common_prefix(['interspecies', 'intersteller', 'interstate']) == 'inters'
# p common_prefix(['throne', 'throne']) == 'throne'
# p common_prefix(['throne', 'dungeon']) == ''
#
# p:
# input - array of strings
# output- common_prefix string
#
# E:
#
# D:
#
# A:
# iterare over array
# - take 1st word chars and compare those chars
#   with other word chars
#   - if all the words include char append it to a new string
#
#
# C:
#

def common_prefix(arr)
  
  index = arr[0].size - 1
  common = ''
  (0..index).each do |i|
    str = arr[0].slice(0, i)
    (1..arr.size - 1).each do |indx|
      return common unless arr[indx].include?(str)
    end
      common = str
  end
  arr[0]
end

p common_prefix(%w[flower flow flight]) == 'fl'
p common_prefix(%w[dog racecar car]) == ''
p common_prefix(%w[interspecies intersteller interstate]) == 'inters'
p common_prefix(%w[throne throne]) == 'throne'
p common_prefix(%w[throne dungeon]) == ''
