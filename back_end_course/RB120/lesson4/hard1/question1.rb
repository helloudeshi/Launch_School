module Milage
   attr_accessor :speed, :heading
   attr_writer :fuel_capacity, :fuel_efficiency
 
  def range
    @fuel_capacity * @fuel_efficiency
  end
end

class WheeledVehicle

  include Milage

  def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
    @tires = tire_array
    @fuel_efficiency = km_traveled_per_liter
    @fuel_capacity = liters_of_fuel_capacity
  end

  def tire_pressure(tire_index)
    @tires[tire_index]
  end

  def inflate_tire(tire_index, pressure)
    @tires[tire_index] = pressure
  end

  
end

class Auto < WheeledVehicle
  def initialize
    # 4 tires are various tire pressures
    super([30,30,32,32], 50, 25.0)
  end
end

class Motorcycle < WheeledVehicle
  def initialize
    # 2 tires are various tire pressures
    super([20,20], 80, 8.0)
  end
end

class Seacraft

  include Milage

  attr_reader :propeller_count, :hull_count

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    @propeller_count = num_propellers
    @hull_count = num_propellers
    self.fuel_efficiency = km_traveled_per_liter
    self.fuel_capacity = liters_of_fuel_capacity
  end

  def range # overide range method to add sea current impact
    super + 10
  end

end

class Catamaran < Seacraft ; end

class Motorboat < Seacraft
  def initialize(num_propellers,num_hulls,km_traveled_per_liter,liters_of_fuel_capacity)
    super(1,1,km_traveled_per_liter,liters_of_fuel_capacity)
  end
end

tractor = WheeledVehicle.new(4, 15, 30)
puts tractor.range 

yatch = Catamaran.new(6, 3, 10, 10)

puts yatch.range

boat = Motorboat.new(1,1,10,20)
puts boat.range