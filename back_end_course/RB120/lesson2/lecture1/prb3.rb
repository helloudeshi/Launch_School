# ##Question 3
# Now create a smart name= method that can take just a first name or a full name, and knows how to set the
# first_name and last_name appropriately.
# class Person
#   attr_accessor :first_name, :last_name

#   def initialize(full_name)
#     name_arr = full_name.split
#     @first_name = name_arr.first
#     @last_name =  name_arr.size > 1 ? name_arr.last : ''
#   end

#   def name 
#     "#{first_name} #{last_name}".strip
#   end

#   def name=(full_name)
#     name_arr = full_name.split
#     self.first_name = name_arr.first
#     self.last_name =  name_arr.size > 1 ? name_arr.last : ''
#   end

# end

##second method 

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
    self.last_name = parts.size > 1 ? parts.last : ""
  end
end

bob = Person.new('Robert')
puts bob.name                  # => 'Robert'
puts bob.first_name            # => 'Robert'
puts bob.last_name             # => ''
bob.last_name = 'Smith'
puts bob.name                  # => 'Robert Smith'

bob.name = 'John Adams'
puts bob.first_name            # => 'John'
puts bob.last_name             # => 'Adams'