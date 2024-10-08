class Animal
  attr_reader :color

  def initialize(color)
    @color = color
  end
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new('Black')
p cat1.color # classes look at [Cat, Animal]
p Cat.ancestors #[Cat, Animal, Object, Kernel, BasicObject]