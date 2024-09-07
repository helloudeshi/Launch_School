##protected method allow access between class instances, while private method do't
## if a method is protected , it can't be invoked from outside the class. 
##This allows for controlled access, but wider access between class instances
class Person
  attr_writer :secret

  def compare_secret(new_person)
    secret == new_person.secret
  end

  protected

  attr_reader :secret
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'

person2 = Person.new
person2.secret = 'Shh.. this is a different secret!'

puts person1.compare_secret(person2)