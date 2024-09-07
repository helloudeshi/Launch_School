=begin 
#modify to multiply age by 2 upon assignment 
# and again multiply 2 when return by getter method
class Person

  def age=(n)
    @age = n*2
  end

def age 
  @age*2
end

end
=end
#second method
# use a new_method to double the age 
class Person
  def age=(age)
    @age =double(age)
  end

  def age
    double(@age)
  end

  private  #since calculations are all being inside the class we can restrict access to `double` method

  def double(n)
    n*2
  end

end

person1 = Person.new
person1.age = 20
puts person1.age