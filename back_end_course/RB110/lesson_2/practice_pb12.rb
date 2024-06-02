arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

hash ={}
arr.each do |details|
  hash[details[0]] = details[1]
 
end
p hash 

## any Ruby object can be a hash key and any Ruby object can be a hash value.