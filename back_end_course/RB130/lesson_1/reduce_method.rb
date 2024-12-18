=begin
def reduce(arr,initial_num = 0)
  counter = 0
  accumilator = initial_num
  while counter < arr.size
    accumilator = yield(accumilator, arr[counter])
    counter += 1
  end
  accumilator
end

array = [1, 2, 3, 4, 5]

p reduce(array) { |acc, num| acc + num }                    # => 15
p reduce(array, 10) { |acc, num| acc + num }                # => 25
# p reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass
=end 

###Improved version

def reduce(arr, initial = nil)
  acc = initial.nil? ? arr.first : initial
  counter = initial.nil? ? 1 : 0

  (counter..(arr.size - 1)).to_a.each do |value|
    acc = yield(acc, arr[value])
  end
  acc
end

array = [1, 2, 3, 4, 5]
p reduce(array) { |acc, num| acc + num }                    # => 15
p reduce(array, 10) { |acc, num| acc + num }                # => 25
p reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
p reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']

reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']