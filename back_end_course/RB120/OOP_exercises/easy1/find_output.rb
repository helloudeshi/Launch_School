class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{@name.upcase}."
  end
end

# name = 'Fluffy'
# fluffy = Pet.new(name)
# puts fluffy.name # Fluppy --> @name
# puts fluffy # calls to_s method
# puts fluffy.name # -->calls @name
# puts name # calls local variable
## in above example name and @name reference to the same object 

name = 42
fluffy = Pet.new(name)
name += 1
puts fluffy.name # 42
puts fluffy #'my name is 42'
puts fluffy.name #'42' # refer @name insatnce variable
puts name #43 # refer local variable name +1 

name = "buffy"
fluffy = Pet.new(name)
puts fluffy.name
name.upcase!
puts fluffy.name 
