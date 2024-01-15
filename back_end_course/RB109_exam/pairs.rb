def pairs(array)
  pair_count = 0
  if(array == []) 
    return pair_count
  end  
  sorted_array = array.sort!
  i = 0
  
  loop do
    if sorted_array[i] == sorted_array[i + 1]
      pair_count += 1
      i += 2
    else
      i += 1
    end
    break if i == sorted_array.length
  end
  pair_count
end

p pairs([1, 2, 5, 6, 5, 2])
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2, 1])
p pairs([0, 0, 0, 0])
p pairs([1, 2, 3, 4])
p pairs([0, 0, 0, 0, 0, 0, 0]) #== 3
p pairs([1000, 1000]) #== 1
p pairs([54])
p pairs([])
