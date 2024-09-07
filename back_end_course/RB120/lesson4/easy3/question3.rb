class AngryCat
  def initialize(age, name)
    @age  = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def name=(n)
    @name = n
  end

  def hiss
    puts "Hisssss!!!"
  end
end
 # when we create instance using `new` method, Ruby will call 
 # initialize method on object creation 
 
cassy = AngryCat.new( 5,'Cassy') # create instance of AngryCat class

pusy = AngryCat.new(2, 'Pusy')
cassy.name = 'bob'
cassy.name
pusy.age
pusy.hiss
