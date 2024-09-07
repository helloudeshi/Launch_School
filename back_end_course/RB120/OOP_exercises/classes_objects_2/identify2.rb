# write a method to print "I'm Sophie" When we invoke `puts` method
## should write a `to_s` method
##`puts` calls `#to_s` method for every argument

class Cat
  attr_reader :name

  def initialize(name)
    @name = name 
  end

  def to_s
   "I'm #{name}"
  end

end

kitty = Cat.new('Sophie')
puts kitty