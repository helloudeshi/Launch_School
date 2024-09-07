class BeesWax
  attr_accessor :type 

  def initialize(type)
    @type = type
  end

  # def type
  #   @type
  # end

  # def type=(t)
  #   @type = t
  # end

  def describe_type
    # puts "I am a #{@type} of Bees Wax" # since this method inside the class @type is not needed.
    puts "I am a #{type} of Bees Wax" 
    #i.e instance variables can be refered inside the class without @
  end
end

rose = BeesWax.new('Rose')
rose.describe_type