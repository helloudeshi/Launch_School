# def running_total(arr)
#   tot_ary = []
#   sum = 0
#   arr.map do |el|
#     sum += el
#     tot_ary << sum 
#   end
#    tot_ary
# end

# * Use reduce/inject method
# def running_total(arr)
#   sum = 0 
#   arr.inject([]) do |ary, num|
#     ary << sum += num
#   end 
# end 

# use each_with_object method
def running_total(ary)
  sum = 0
  ary.each_with_object([]) do |num , array|
    array << (sum += num)
  end 
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []