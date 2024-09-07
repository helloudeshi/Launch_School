##Using the following code, add the appropriate accessor methods.
# Keep in mind that @age should only be visible to instances of Person.

class Person
  attr_writer :age 

  def older_than?(other)
    age > other.age
  end

  protected
  attr_reader :age

end

person1 = Person.new
person1.age = 17

person2 = Person.new
person2.age = 26

puts person1.older_than?(person2) # insatnce person1 can access instance person2 age

# when method is `private` - can only be invoked on `self`
# when protected , instances of the class or a subclass can also call the method
# wecan share data between instances of same class type