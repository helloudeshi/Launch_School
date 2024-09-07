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

small_car = Car.new
small_car.go_fast # I am a Car and going super fast!

=begin
 When we invoke `go_fast`method from an instance of the Car, 
 `self` method results the output 

 Here we use `self.class`` in the method and this works the following way.
 - `sel` refers to the object referenced by `small_car`. In this case, that's a `Car` object.
  - We ask to `self` to tell us its class with `.class`
  -We don't need to use `to_s` here because it is inside of a `string` and is interpolated which means it 
    will take care of the `to_s` for us.
=end


