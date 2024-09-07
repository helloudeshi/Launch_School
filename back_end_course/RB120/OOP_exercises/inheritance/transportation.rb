## modules are useful for `namespacing` as well. 
#Namespacing is where similar classes are grouped within a module.
#We can instantiate a class that's contained in a module by invoking  
# Transportation::Truck.new

module Transportation

  class Vehicle; end

  class Truck < Vehicle ; end

  class Car < Vehicle ; end

end

puts Transportation::Truck.new  #<Transportation::Truck:0x00000001029405e0>
