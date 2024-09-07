module Flyable
  def fly
    "I'm flying!"
  end
end

class Animal
  attr_reader :color

  def initialize(color)
    @color = color
  end
end

class Cat < Animal
end

class Bird < Animal
  include Flyable
end

bird1 = Bird.new('Red')
p bird1.color #[ Bird, Flyable, Animal]
p Bird.ancestors #[Bird, Flyable, Animal, Object, Kernel, BasicObject]

##when a module is included in a class, the class is searched before module
# but module is serched before super class
