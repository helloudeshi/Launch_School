=begin  
# i/p contain first name and last_name
# the name should be split in to two in the setter method
# join in the getter method to form full name

class Person
  attr_accessor :name

  # we need to create two instance variables in setter method.
  #But we only dealing with one argument, thus we use `split` method 
  def name=(name) # setter method 
    @first_name = name.split[0]
    @last_name = name.split[1]
  end

  def name # getter method we can't return @name since that instance variable doesn't exits. 
    # @first_name + ' ' + @last_name
    "#{@first_name} #{@last_name}"
  end
end
=end

# as second option making use of private methods 
class Person
  def name=(name)
    @first_name, @last_name = name.split
  end

  def name
    "#{first_name} #{last_name}"
  end

  private

  attr_reader :first_name, :last_name
end


person1 = Person.new
person1.name = 'John Doe'
puts person1.name
