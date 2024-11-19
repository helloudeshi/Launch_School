=begin
P: to manage robot factory settings
- when 1st time boot the robot a random name is generated.
 eg : RX837 or BC811 (2upper case leeters + 3 digits)
-everyonce in a while, we need to reset robot and then it should update name 
another random name. 
-one name should not be used twice.

E:According to given test cases, 
- need to create a robot class
- it should have two methods 
  1. name - treturn the randomly generated name 
  2. reset- to reset robots to factory reset, here a new name must
  be generated. 

D:
A:
  
=end

class Robot
  @@names = []

  def name
    return @name if @name
    @name = get_name while @@names.include?(@name) || @name.nil?
    @@names << @name
    @name
  end

  def reset 
    @@names.delete(@name)
    @name = nil
  end

  def get_name 
    letters = Array.new(2){('A'..'Z').to_a.sample}.join
    name_digits = Array.new(3){(0..9).to_a.sample}.join.to_s
    letters + name_digits
  end

end

rb1 = Robot.new
p rb1.name
p rb1.reset
p rb1.name