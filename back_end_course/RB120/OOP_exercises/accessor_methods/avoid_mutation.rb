# before editing code - @name to be modified from 
#the outside method via a destructive method

class Person
  attr_reader :name # getter method typically return refernce to the instance variable

  def initialize(name)
    @name = name
  end
end

person1 = Person.new('James')
person1.name.reverse!
puts person1.name # 'semaJ' printed
# after alter the code to non_mutate name 
class Person

  def initialize(name)
    @name = name
  end
 
  def name # write customized getter method 
   @name.clone # returns a copy of @name instead of a refernce to it.
   #this means any modifications done to the return value won't affect the value of @name
  end
end

person1 = Person.new('James')
person1.name.reverse!
puts person1.name # 'James' is printed 
