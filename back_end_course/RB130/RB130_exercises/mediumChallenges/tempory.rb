# say_hello = Proc.new { |name| puts "Hello, #{name}!" }
# ["Alice", "Bob"].each(&say_hello)

# def blah(&block)
#  yadda(block)
# end

# def yadda(&block)
#  foo(&block)
# end

# def foo(&block)
#  block.call
# end

# blah do
#  puts "hello"
# end

# blah{puts "hi"}

# def foo(str)
#   yield(1,2,3) if block_given?
# #   puts str
# # end

# def convert_to_base_8(n)
#   n.to_s(8).to_i
# end

# base8_proc = method(:convert_to_base_8).to_proc

# p [8, 10, 12, 14, 16, 33].map(&base8_proc) # => [10, 12, 14, 16, 20, 41
def reduce(arr, initial = nil)
  acc = initial.nil? ? arr.first : initial
  counter = initial.nil? ? 1 : 0

  (counter..(arr.size - 1)).to_a.each do |value|
    acc = yield(acc, arr[value])
  end
  acc
end

array = [1, 2, 3, 4, 5]
p reduce(%w[a b c]) { |acc, value| acc += value } # => 'abc'
p reduce([[1, 2], %w[a b]]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']
p reduce(array) { |acc, num| acc + num }                    # => 15
p reduce(array, 10) { |acc, num| acc + num }                # => 25
# p reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass
