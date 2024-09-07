# first_name visible outside the method, 
# but last_name doesn't visibale outside the class

class Person
  attr_writer :last_name
  attr_accessor :first_name

  def first_equals_last? # this is a public method
    first_name == last_name
  end

  private # only object knows about this data
  attr_reader  :last_name
end

person1 = Person.new
person1.first_name = 'Dave'
person1.last_name = 'Smith'
puts person1.first_equals_last? # false
person1.last_name # => NoMethodError