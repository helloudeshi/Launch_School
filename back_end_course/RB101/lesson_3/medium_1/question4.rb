# def rolling_buffer1(buffer, max_buffer_size, new_element)
#     buffer << new_element
#     buffer.shift if buffer.size > max_buffer_size
#     buffer
#   end

def rolling_buffer2(input_array, max_buffer_size, new_element)
    buffer = input_array + [new_element]
    buffer.shift if buffer.size > max_buffer_size
    buffer
  end

p rolling_buffer2(%w(a b c d e f), 6,'g')
  
