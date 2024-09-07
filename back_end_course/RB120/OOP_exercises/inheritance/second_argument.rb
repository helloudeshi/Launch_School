class Vehicle
  attr_reader :year

  def initialize(year)
    @year = year
  end
end

class Truck < Vehicle
  attr_reader :bed_type #only trucks have beds 

  def initialize(year,bed)
    super(year) # only year from the super class needed to be passed here
    @bed_type = bed
  end

end

class Car < Vehicle
end

truck1 = Truck.new(1994, 'Short')
puts truck1.year
puts truck1.bed_type