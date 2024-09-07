## add 2 methods 
# `generic_greeting` - class method and print a genric greet
# personal_grreting - instance method and print a customized greeting to the object
=begin    
 Differnces class method and instance method
 - class methods only associated with the class itself not instances 
 -we're restricted from adding data specific to objects of the class,
  like name of instance 
  -class method is more general which are common to the class 

=end

class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.generic_greeting # class method
    puts "Hello!, I'm a #{name.downcase}!"
  end

  def self.speak #class method
    puts "Meow!"
  end

  def personal_greeting #instance
    puts "Hello!, My name is #{name}"
  end

end

kitty = Cat.new('Sophie')

Cat.generic_greeting
Cat.speak
kitty.personal_greeting