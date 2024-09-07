module Taste
  def flavor(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
end

class HotSauce < Orange
end

# to check the lookup chani `ancestors` method is used
p Orange.ancestors # Orange, taste, Object, Kernel, BasicObject
p HotSauce.ancestors # HotSauce, Orange , Taste, Object ,Kernel,  BasicObject

# But `ancestors` method is a class method. This will not work 
 # if you call on an instance method 