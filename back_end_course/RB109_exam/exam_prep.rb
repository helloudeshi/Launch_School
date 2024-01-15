# a = 'hello'
# b = a
# a += 'world '

# puts a # world
# puts b # hello

# a = 4

# loop do
#   a = 5
#   b = 3

#   break
# end

# puts a  # a = 5
# puts b  # b undefined local variable error, becuase b variable can't be accessed out of the loop

# a = 4
# b = 2

# loop do
#   c = 3
#   a = c
#   break
# end

# puts a # a = 3 c is initialized in the loop and then a is reassigned to c . i.e. a =3
# puts b # b= 2

# a = 7
# array = [1, 2, 3]

# new_array = []
# def my_value(ary)
#   a=4
#   new_array = ary.map {|b| b+a}

#   p new_array
# end

# def example(str)
#     i = 3
#     loop do
#       puts str
#       i -= 1
#       break if i == 0
#     end
#   end
#   example('hello') # this return nil - because in ruby loop method always return nil

# def greetings(str)
#     puts str
#     puts "Goodbye"
#   end
#   word = "Hello"
#   greetings(word)  # hello goodbye and return nil

# word = 'abcdefghijklmn'
# word.each_char {|char| puts char}

# def skip_animals(animals, skip)
#   # Your code here
#   arr = []
#   animals.each_with_index { |item, index| arr.push("#{index}:#{item}") if index >= skip }
#   p arr
# end

# skip_animals(%w[leopard bear fox wolf], 2)

# arr = [1, 2, 3, 4]
# counter = 0
# sum = 0
# loop do
#   sum += arr[counter]
#   counter += 1
#   break if counter == arr.size
# end
# puts "Your total is #{sum}"

#  a = 'Bob'
# 5.times do |x|
#   a = 'Bill'
# end
# p a

# a = 5

# def some_method
#   a = 3
# end

# puts a

# Method invocation with a block

# [1, 2, 3].each do |num|
#     puts num
#   end

# def some_method(number)
#     number = 7 # this is implicitly returned by the method
#   end

#   a = 5
#   some_method(a)
#   puts a

# a = [1, 2, 3]

# # Example of a method definition that mutates its argument permanently
# def mutate(array)
#   array.pop # pop method mutates the array
# end

# p "Before mutate method: #{a}"
# mutate(a)
# p "After mutate method: #{a}"

# a = [1, 2, 3]

# # Example of a method definition that does not mutate the argument
# def no_mutate(array)
#   array.last
# end

# p "Before no_mutate method: #{a}"
# no_mutate(a)
# p "After no_mutate method: #{a}"

# def add_three(number)
#     return number + 3
#     number + 4
#   end
#   returned_value = add_three(4)
#   puts returned_value

# Use the each_with_index method to iterate through an array of your creation
# that prints each index and value of the array.
array = [1, 2, 3, 4, 5]

# array.each_with_index{|n, index| puts "#{index} is:  #{n}" }

# Write a program that iterates over an array and builds
# a new array that is the result of incrementing each value
# in the original array by a value of 2. You should have two arrays at the end of this program,
# The original array and the new array you've created.
# Print both arrays to the screen using the p method instead of puts

# new_array = array.map{|n| n+2}
# p new_array
# p array

# def greetings
#   puts "Goodbye"
#   yield
# end

# word = "Hello"
# greetings do
#   puts word
# end

# def yield_with_return_value
#   hello_world = yield

#   puts hello_world
# end

# yield_with_return_value { "Hello World!" }

# def method
#   'Hello World!'
# end

# myvar = method
# puts myvar

number = 10
arr = [1, 2, 3]
new_arr = arr.map do |num|
num += 2
end
p new_arr
p number
p arr

