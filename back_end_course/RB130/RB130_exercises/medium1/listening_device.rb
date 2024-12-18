class Device
  def initialize
    @recordings = []
  end

  def record(recording)
    @recordings << recording
  end

  def listen
    record(yield) if block_given?
  end

  def play
    @recordings[-1]
  end

end

listener = Device.new
listener.listen { "Hello World!" }
p listener.listen
p listener.play # Outputs "Hello World!"
listener.listen{'Welcome to listning'}
p listener.play