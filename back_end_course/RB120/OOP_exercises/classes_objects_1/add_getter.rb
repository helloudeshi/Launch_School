class Cat

  # attr_reader :name
##or we can use long getter method as below

  def name
    @name
  end

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet