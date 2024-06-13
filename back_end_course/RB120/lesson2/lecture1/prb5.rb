class Person 
  attr_accessor :name

  def initialize(n)
    @name = n
  end
  def to_s
    name
  end

end

bob = Person.new("Robert Smith")
puts "The person's name is: #{bob}"

=begin  
# The person's name is: #<Person:0x0000000103310390>
# this is because Ruby automatically calls `to_s` insatnce method.
#if we don't have `to_s` method we have to use below code
puts "The person's name is: #{bob.name}"
#The person's name is: Robert Smith
puts "The person's name is: " + bob.name        # => The person's name is: Robert Smith
 # or add `to_s` method to the class
=end


