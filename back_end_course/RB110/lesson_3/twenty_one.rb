values = %w(2 3 4 5 6 7 8 9 10 J Q K A)
crd_count_hash = {}
values.each {|el| crd_count_hash[el] = 4}
crd_count_hash

def assign_values(val)
  crd_value_hash = {}
  val[0..8].each {|num|crd_value_hash[num] = num.to_i }
  val[9..11].each{|letter| crd_value_hash[letter] = 10}
  crd_value_hash[val[12]] = 11
  crd_value_hash
end

assign_values(values)

def initialize_deck(crd_set)
 player_crds = crd_set.keys.sample(2)
 p player_crds
 player_crds.map! do |key|
  crd_set[key] -= 1
 end 

 p crd_set
 dealer_crds = crd_set.keys.sample(2)

 p dealer_crds
end



initialize_deck(crd_count_hash)