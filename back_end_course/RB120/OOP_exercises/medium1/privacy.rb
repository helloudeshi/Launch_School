class Machine

  def start
    flip_switch(:on) # also can use self.flip_switch(:on)
    puts "I'm starting"
  end

  def stop
    flip_switch(:off)
    puts "I'm switching off"
  end

  def get_status
    puts "I'm #{switch}" #this method can access the getter switch private method
  end


  private 
  attr_writer :switch
  attr_reader :switch 

  def flip_switch(desired_state)
    self.switch = desired_state
  end

end

tv = Machine.new
tv.start
tv.get_status
tv.stop 
tv.get_status