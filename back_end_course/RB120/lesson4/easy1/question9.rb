class Bag
attr_reader :color
 
  def initialize(color, material)
    @color = color
    @material = material
  end
end

hand_bag = Bag.new('green', 'leather')
p hand_bag.color # to get the color we need to set getter method on line 2