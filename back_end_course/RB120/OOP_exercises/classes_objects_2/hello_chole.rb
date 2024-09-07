## Add an instance method to rename instance
#-->To modify value using setter method, they must be 
# -- denoted with `self` so that ruby knows differnce between initializing local variable and invoking setter method
class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename(new_name)
    self.name = new_name
  end

end

kitty = Cat.new('Sophie')
puts kitty.name
kitty.rename('Chloe')
puts kitty.name