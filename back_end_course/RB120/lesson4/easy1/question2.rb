# In order to give the `go_fast` method to the Truck and Car,
# we need to include the module that has that method
module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  include Speed

  def go_slow
    puts "I am safe and driving slow."
  end
end

class Truck
  include Speed
  def go_very_slow
    puts "I am a heavy truck and like going very slow."
  end
end

car = Car.new
car.go_fast #I am a Car and going super fast!

truck = Truck.new
truck.go_fast #I am a Truck and going super fast!