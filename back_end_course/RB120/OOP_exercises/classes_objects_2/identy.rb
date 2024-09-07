# add a method called `identify` to return the calling object
## In last exercises we used `self` to define class methods and to modify instance variables
## `self` is used because it refers to the calling object
##--> It means that in our solution invoking `self` is the same as invoking `kitty`
class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def identify; self end
    
end

kitty = Cat.new('Sophie')
p kitty.identify
p kitty