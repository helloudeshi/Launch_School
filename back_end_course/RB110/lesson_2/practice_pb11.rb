arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

num_ary_of3 = arr.map do |num_ary|
  num_ary.select do |num|
    num % 3 == 0
  end
end

p num_ary_of3