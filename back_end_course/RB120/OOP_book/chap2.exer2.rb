# class Person
#   attr_reader :name 
#   def initialize(name)
#     @name = name
#   end
# end

# bob = Person.new("Steve")
# bob.name = "Bob" # appear an error 
# because name is only a reader method to fix this we should change to 
#attr_accessor 

# class Person
#   attr_accessor :name
#   def initialize(name)
#     @name = name
#   end
# end

# bob = Person.new("Steve")
# puts bob.name
# bob.name = "Bob"
# puts bob.name

# module Flight
#   def fly; end
# end

# module Aquatic
#   def swim; end
# end

# module Migratory
#   def migrate; end
# end

# class Animal
# end

# class Bird < Animal
# end

# class Penguin < Bird
#   include Aquatic
#   include Migratory
# end

# pingu = Penguin.new
# # pingu.fly
# puts Penguin.ancestors

# class Animal
#   def initialize(name)
#     @name = name
#   end

#   def speak
#     puts sound
#   end

#   def sound
#     "#{@name} says "
#   end
# end

# class Cow < Animal
#   def sound
#     super + "moooooooooooo!"
#   end
# end

# daisy = Cow.new("Daisy")
# daisy.speak

# class Person
#   def name
#     @name
#   end

#   def name=(name)
#     @name = name
#   end
# end
# kate = Person.new
# kate.name = 'Kate'
# # p kate.name # => 'Kate'

# class Person
#   attr_writer :first_name, :last_name

#   def full_name
#     "#{first_name} #{last_name}"
#   end
# end

# mike = Person.new
# mike.first_name = 'Michael'
# mike.last_name = 'Garcia'
# puts mike.full_name # => 'Michael Garcia'

class Student
  attr_accessor :name, :grade

  def initialize(name)
    @name = name
    @grade = nil
  end

  def change_grade(new_grade)
    grade = new_grade
  end

end

priya = Student.new("Priya")
priya.change_grade('A')
puts priya.grade # => "A"