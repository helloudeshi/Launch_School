## Changing code to automaticaly invoke `start_engine` method when creating `Truck` instance
# use super key word
 
# class Vehicle
#   attr_reader :year

#   def initialize(year)
#     @year = year
#     start_engine
#   end

#   def start_engine
#     puts 'Ready to go!'
#   end

# end

# class Truck < Vehicle

# end

# truck1 = Truck.new(1994)
# puts truck1.year

## second method 

class Vehicle
  attr_reader :year

  def initialize(year)
    @year = year
  end
end

class Truck < Vehicle
  def initialize(year)
    super 
    start_engine
  end

  def start_engine
    puts "I'm ready to go!"
  end

end

truck1 = Truck.new(2023)
puts truck1.year

=begin 
class Vehicle

  attr_reader :year

  def initialize(year)
    @year = year
  end

  def start_engine
     'Ready to go!'
  end
end

class Truck < Vehicle

  # def initialize(year)
  #   super
  #   start_engine
  # end

  def start_engine
    super +  " I'm Truck, Let's go.."
  end
end

truck1 = Truck.new(1996)
puts truck1.start_engine

#puts truck1.method(:start_engine).super_method.call
# truck1.start_engine # => "I'm a truck! Let's go!"


class Vehicle
  def start_engine
    puts 'Ready to go!'
  end
end

class Truck < Vehicle
  def start_engine
    puts "I'm a truck! Let's go!"
  end
end

truck1 = Truck.new
truck1.start_engine # => "I'm a truck! Let's go!"
truck1.method(:start_engine).super_method.call # 'Ready to go!'
=end 
