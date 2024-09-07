module Drivable
  def drive
    puts " i'm driving"
  end
end

class Car
  include Drivable
end

bobs_car = Car.new
bobs_car.drive