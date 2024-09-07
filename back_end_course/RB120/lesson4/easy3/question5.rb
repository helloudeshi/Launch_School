class Television
  def self.manufacturer # this is a class method
    puts "I'm Manufacturing"
  end

  def model # this is instance method
    puts "model"
  end
end

tv = Television.new
#tv.manufacturer #error
tv.model

Television.manufacturer
#Television.model # error - no method for class