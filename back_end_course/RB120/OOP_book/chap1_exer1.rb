class MyCar
  # attr_accessor :year :color :model 
  attr_accessor :color
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def speed_up(speed)
    @current_speed+= speed
    puts 'Push gas to accelerate'
  end

  def brake(speed) 
    @current_speed -= speed
    puts 'push brake'
  end

  def current_speed
    puts "your current speed is #{@current_speed}"
  end


  def shut_off
    @current_speed = 0
    puts "lets park"
  end

  def spray_paint(color)
    self.color = color
    puts "painting clolr #{color} is looking great "
  end

##create a class method for class - no matter what type of car, milage is same
   def self.gas_milage(gallons,miles)
    puts "#{miles/gallons} miles per gallon of gas"
   end

##overide to_s method
 def to_s
  "My car is a #{color}, #{year}, #{@model}"
 end
end



honda = MyCar.new(2024, 'black', 'suv')

honda.speed_up(60)
honda.current_speed
honda.brake(40)
honda.current_speed
honda.shut_off
honda.current_speed
 honda.color = 'white'
 puts honda.color
puts honda.year 
honda.spray_paint('red')
MyCar.gas_milage(13,351) #since we define method as class method using self
puts honda



