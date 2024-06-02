arr = [{ a: [1, 2, 3] }, { b: [2, 4, 6], c: [3, 6], d: [4] }, { e: [8], f: [6, 10] }]

even_hash = (arr.select do |hash|
  hash.all? do |_, value|
    value.all? do |num|
      num.even?
    end
  end
end)

p even_hash


#### if we want to select all even integers toa hash
##try ??? 
# selct_num = (arr.each_with_object({}) do |value_hash, new_hash|
#   value_hash.each_value do |array|
#   new_hash[value_hash[key]] = (array.map{ |num| num.even? })
# end)

# p selct_num
