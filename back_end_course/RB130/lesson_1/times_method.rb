def times(num)
  counter = 0
  while counter < num
    yield(counter)
    counter += 1
  end
  num # to match `Integer#times` method
end

times(3) do |num|
  puts num 
end