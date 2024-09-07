## create a class named `Vehicle` passed year upon instantiation
# both car and truck should inherit from Vehicle class

module Towable
  def tow
    'I can tow a trailer!'
  end
end

class Vehicle
  attr_reader :year

  def initialize(year)
    @year = year
  end

end

class Truck < Vehicle # inherit from both class and module 
  include Towable
end

class Car < Vehicle
end

truck1 = Truck.new(1994)
puts truck1.year
puts truck1.tow

car1 = Car.new(2006)
puts car1.year