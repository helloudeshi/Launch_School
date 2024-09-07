class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  #def light_status
    def light_level
    "I have a brightness level of #{brightness} and a color of #{color}"
  end

end

led = Light.new('medium' , 'white')
puts led.light_level