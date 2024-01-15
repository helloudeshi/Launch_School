def is_valid_walk(direction)
  walking_time = 10
  direction_hash = {}
  return false if direction.size != walking_time

  direction.map do |ele|
    direction_hash[ele] = direction.count(ele)
  end
  (direction_hash['n'] == direction_hash['s']) && (direction_hash['e']== direction_hash['w'])
end


p is_valid_walk(%w[n s n s n s n s n s]) == true
p is_valid_walk(%w[w e w e w e w e w e w e]) == false
p is_valid_walk(['w']) == false
p is_valid_walk(%w[n n n s n s n s n s])  == false
p is_valid_walk(%w[n s e w n s n s e w]) == true