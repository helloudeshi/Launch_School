module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end
  
##Defining methods this way within a module means we can call them directly from the module:
  def self.some_out_of_place_method(num)
    num ** 2
  end
end
## we call classes in a module by appending the class name to the module name with two colons (::) 
buddy = Mammal::Dog.new
kitty = Mammal::Cat.new
buddy.speak('Arf!')           # => "Arf!"
kitty.say_name('kitty')       # => "kitty"
value = Mammal.some_out_of_place_method(4)
p value