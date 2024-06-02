arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]


new_arr = (arr.map do |hash|
  new_hash = {}
  hash.each do |key, num|
    new_hash[key] = num +1
  end
  new_hash
end)

# p new_arr
# p arr

p (arr.each_with_object([]) do |hash, array| 
  incremented_hash = {}
  hash.each do |key,value|
    incremented_hash[key] = value +1
  end
  array << incremented_hash
end)
