arr = ['10', '11', '9', '7', '8']

#sorted_ary = (arr.map{|el| el.to_i}).sort{|a,b| b<=>a}

sorted_ary = arr.sort{|a,b| b.to_i <=>a.to_i}

p sorted_ary