class Vehicle
  def start_engine
    'Ready to go!'
  end
end

class Truck < Vehicle
 
  ##super invokes the method in the inheritance hierachy with the same name 
  # as the method in the child 
  
  def start_engine(speed)
    super() + " Drive #{speed}, please!" # use empty parenthesis to avoid argument error
  end
end

truck1 = Truck.new
puts truck1.start_engine('fast')