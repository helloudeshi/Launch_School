class Transform

  def initialize(str)
    @str = str
  end

  def self.lowercase(str) # class method
    str.downcase
  end

  def uppercase # instance method
    @str.upcase
  end

end

my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')