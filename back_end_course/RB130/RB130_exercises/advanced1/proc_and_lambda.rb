=begin
# Group 1
my_proc = proc { |thing| puts "This is a #{thing}." }
puts my_proc #string representation of proc object 
puts my_proc.class # proc
my_proc.call #This is a 
my_proc.call('cat') # this is a cat 

# Group 2
my_lambda = lambda { |thing| puts "This is a #{thing}." }
my_second_lambda = -> (thing) { puts "This is a #{thing}." }
puts my_lambda  # return object
puts my_second_lambda # return object
puts my_lambda.class # Proc
my_lambda.call('dog') # This is a dog
#my_lambda.call # argument error
my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." } # error - no such method 'new` on lambda


# Group 3
def block_method_1(animal)
  yield
end

block_method_1('seal') { |seal| puts "This is a #{seal}."} # This is a
block_method_1('seal') # localjump error
=end 

# Group 4
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."} # this is a turtle
block_method_2('turtle') do |turtle, seal| #This is turtle and a  --> since only one parameter is passed to yield
  puts "This is a #{turtle} and a #{seal}."
end
block_method_2('turtle') { |animal| puts "This is a #{animal}."}
