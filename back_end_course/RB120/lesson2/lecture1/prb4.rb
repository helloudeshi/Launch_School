class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    parse_full_name(full_name)
  end

  def name
    "#{first_name} #{last_name}".strip
  end

  def name=(full_name)
    parse_full_name(full_name)
  end

  private

  def parse_full_name(full_name)
    parts = full_name.split
    self.first_name = parts.first
    self.last_name = parts.size > 1 ? parts.last : ''
  end


end

bob = Person.new('Robert Smith')
puts bob.first_name
puts bob.last_name
rob = Person.new('Robert Smith')
puts rob.first_name
## to compare objects names more precisely
## we can' compare two different objects with '=='
puts (bob.name == rob.name)
