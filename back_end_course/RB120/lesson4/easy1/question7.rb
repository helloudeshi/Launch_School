class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    self.age += 1 # self refers to object
  end
end

sassy = Cat.new ('wild')
p sassy.make_one_year_older

## `one_year_older` is an instance method. 
# can only be called on instances of the class `Cat`
# Therefore `self` here refers the instance (object) that called the method - the calling object
