class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count  # self here refers Cat class
    @@cats_count
  end
end

# since this is a class method, it represents the class itself
# in this case `Cat` therefore you can call `Cat.cats_count`