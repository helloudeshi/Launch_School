class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    self.age += 1 # instaed of `self` we can use @ here
    # @gae += 1
  end
end

cassy = Cat.new('cas')
puts cassy.make_one_year_older