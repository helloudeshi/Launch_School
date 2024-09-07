=begin
class Person
  attr_accessor :name
end

person1 = Person.new
person1.name = 'Jessica' # same as person1.name=('Jessica')
puts person1.name

# question 2
class Person
  attr_accessor :name
  attr_writer :phone_number # since we don't need to retrive this
end

person1 = Person.new
person1.name = 'Jessica'
person1.phone_number = '0123456789'
puts person1.name
=end 
# question 3
#Modify the following code so that the value of @phone_number 
#can still be read , but cannot be changed

class Person
  
  attr_reader :phone_number #this should not change outside the class

  def initialize(number)
    @phone_number = number
  end
end

person1 = Person.new(1234567899)
puts person1.phone_number

# person1.phone_number = 9987654321
# puts person1.phone_number 
