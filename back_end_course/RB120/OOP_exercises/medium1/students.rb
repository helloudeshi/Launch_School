class Student
  attr_reader :name, :year
  def initialize(name, year)
    @name = name
    @year = year
  end

  def subjects
   "I'm doing research"
  end

end

class Graduate < Student
  attr_reader :parking
  def initialize(name, year, parking)
    super(name,year)
    @parking = parking
  end
end

class Undergraduate < Student

  def initialize(name, year)
    super 
  end

  def subjects
    super() + " and Assignments" # calling super class 
  end

end

student1 = Undergraduate.new('ude' , 2023)
puts "#{student1.name} is a undergraduate student of class #{student1.year}"
puts student1.subjects
student2 = Graduate.new('pri', 2024, 'indoor_park')