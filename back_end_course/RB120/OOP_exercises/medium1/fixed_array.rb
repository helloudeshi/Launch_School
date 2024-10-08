class FixedArray

  def initialize(arr_size)
    @arr = Array.new(arr_size)
  end

  def [](arr_index) #method to retrieve indicated element
    @arr.fetch(arr_index) #return the element at offset index
  end

  def []=(arr_index,str) 
    self[arr_index]  #raise error if index is invalid
    @arr[arr_index] = str
  end

  def to_a 
    @arr.clone
  end

  def to_s
    to_a.to_s
  end

end


fixed_array = FixedArray.new(5)
puts fixed_array[3] == nil
puts fixed_array.to_a == [nil] * 5

fixed_array[3] = 'a'
puts fixed_array[3] == 'a'
puts fixed_array.to_a == [nil, nil, nil, 'a', nil]

fixed_array[1] = 'b'
puts fixed_array[1] == 'b'
puts fixed_array.to_a == [nil, 'b', nil, 'a', nil]

fixed_array[1] = 'c'
puts fixed_array[1] == 'c'
puts fixed_array.to_a == [nil, 'c', nil, 'a', nil]

fixed_array[4] = 'd'
puts fixed_array[4] == 'd'
puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd']
puts fixed_array.to_s == '[nil, "c", nil, "a", "d"]'

puts fixed_array[-1] == 'd'
puts fixed_array[-4] == 'c'

begin
  fixed_array[6]
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[-7] = 3
  puts false
rescue IndexError
  puts true
end

begin #this structure is for exception handler 
  fixed_array[7] = 3
  puts false
rescue IndexError
  puts true
end