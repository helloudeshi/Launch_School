## add a setter method to rename 'kitty' to 'Luna'

class Cat
  # attr_reader :name
  # attr_writer :name
## instead of above 2 lines we can use 
  #attr_accessor :name 
## or we can use setter method as below with reatder method
  attr_reader :name

  def initialize(name)
    @name = name
  end
##long setter method
  def name=(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet
kitty.name = 'Luna'
kitty.greet