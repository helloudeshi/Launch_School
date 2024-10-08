## Create a module to include 'walk' method in class Cat.
module  Walkable 
  def walk
    puts "Let's go for a walk!"
  end
end

class Cat 
  include Walkable
  attr_accessor :name

  def initialize(n)
    @name = n
  end

  def greet 
    puts "Hello!, My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet
kitty.walk
kitty.name = 'Luna'
kitty.greet
kitty.walk
