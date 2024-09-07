class Cat
  def initialize(type)
    @type = type
  end

  def to_s
    "I'm a #{@type} cat? " # without using @type here 
    # we can use `type` by using `attr_reader` method at the begining
  end

end

alice = Cat.new('fluppy')
puts alice # #<Cat:0x00000001026205b8> before to_s method
 # after definining `to_s`==>  I'm a fluppy cat?  

