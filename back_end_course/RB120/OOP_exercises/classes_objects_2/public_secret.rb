=begin   
create a class named `person` with an insatance `secret`
Use setter method to add value to @secret
Use a getter method to print @secret

=end
##public methods can be accessed ffrom both within the class and outside the class
##attr_accessor automatically create getter and setter method to secret variable
## i.e we can use below 3 lines to get the output 
# class Person
#   attr_accessor :secret
# end

## or we can use manually created getter and setter methods 
class Person
  
  def secret
    @secret
  end
  
  def secret=(msg)
    @secret = msg
  end
  
end

person1 = Person.new
person1.secret = "Shh..this is a secret!"
puts person1.secret