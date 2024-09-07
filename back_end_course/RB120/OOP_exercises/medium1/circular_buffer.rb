## method 1 
class CircularBuffer
  def initialize(size)
    @buffer = [nil]* size
    @next_position = 0
    @oldest_position = 0
  end

  def put(object)
    unless @buffer[@next_position].nil?
      @oldest_position = increment(@next_position)
    end

    @buffer[@next_position] = object
    @next_position = increment(@next_position)

  end

  def get 
    value = @buffer[@oldest_position]
    @buffer[@oldest_position] = nil
    @oldest_position = increment(@oldest_position) unless value.nil?
    value
  end

  def increment(position)
    (position+1)% @buffer.size
  end
end

=begin   
class CircularBuffer
  attr_reader :size, :circular

  def initialize(size)
    @circular = Array.new
    @size = size
    
  end


  def put(num)
   get if circular.count == size 
    circular << num
  end

  def get
    circular.shift
  end

end
=end

buffer = CircularBuffer.new(3)
puts buffer.get == nil

buffer.put(1)
buffer.put(2)
puts buffer.get == 1

buffer.put(3)
buffer.put(4)
puts buffer.get == 2

buffer.put(5)
buffer.put(6)
buffer.put(7)
puts buffer.get == 5
puts buffer.get == 6
puts buffer.get == 7
puts buffer.get == nil

buffer = CircularBuffer.new(4)
puts buffer.get == nil

buffer.put(1)
buffer.put(2)
puts buffer.get == 1

buffer.put(3)
buffer.put(4)
puts buffer.get == 2

buffer.put(5)
buffer.put(6)
buffer.put(7)
puts buffer.get == 4
puts buffer.get == 5
puts buffer.get == 6
puts buffer.get == 7
puts buffer.get == nil