# Which of these two classes would create objects 
# that would have an instance variable and how do you know?


class Fruit
  def initialize(name) 
    name = name # not a instance variable it should start with `@`
  end
end

class Pizza
  def initialize(name) 
    @name = name # class has instance variable
  end

end
vegi_pizza = Pizza.new('Vegg') 
p vegi_pizza.instance_variables #[:@name]
orange = Fruit.new('krest')
p orange.instance_variables  # []

