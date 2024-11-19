def step(starting, ending, step_value)
  counter = starting
  while counter <= ending 
    yield(counter)
    counter+= step_value
  end
  starting..ending
end

p step(1, 10, 3) { |value| puts "value = #{value}" }
# value = 1
# value = 4
# value = 7
# value = 10
