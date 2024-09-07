class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
    puts @@cats_count
  end

  def self.cats_count
    @@cats_count
  end
end

sassy = Cat.new('Sassy')
#puts Cat.cats_count
pusy = Cat.new('pusy')
#puts Cat.cats_count

# @@cats_count variable is to keep tack of how many cat instances have been created
# @@cats_count is a class variable and when we 
# initialize a Cat instance it will increase by 1
