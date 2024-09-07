## Method `generic_greeting` has been invoked on `Cat` class. Not an instznce of `Cat`
## This means the method is a class method
## To define a class method, method name is prepend with `self`
## 
## instead of self class definition we can use method chaining to invoke 
  # method 

class Cat
  def self.generic_greeting
    puts "Hello!, I'm a cat"
  end
end

Cat.generic_greeting
kitty = Cat.new 
kitty.class.generic_greeting

## we can use module method to call cat class 
# module Greet 
#   def generic_greeting
#     puts "Hello!, I'm a cat"
#   end
# end

# class Cat
#   include Greet
# end

# kitty = Cat.new
# kitty::generic_greeting

