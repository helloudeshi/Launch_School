###Question 2
class Person

  attr_accessor :first_name, :last_name

  def initialize(full_name)
    sub_names = full_name.split
    @first_name = sub_names.first
    @last_name = sub_names.size > 1 ? sub_names.last : ''
  end

  def name
    "#{first_name} #{last_name}".strip # strip removes leading trailing whitespaces
  end

end

bob = Person.new('Robert')
puts bob.name                  # => 'Robert'
puts bob.first_name            # => 'Robert'
puts bob.last_name             # => ''
bob.last_name = 'Smith'
puts bob.name                  # => 'Robert Smith'
