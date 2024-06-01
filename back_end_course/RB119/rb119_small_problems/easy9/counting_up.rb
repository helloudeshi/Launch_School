def sequence(num)
  counting_arr = []
  (1..num).each do |int|
    counting_arr << int
  end
  counting_arr
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]