def buy_fruit(grocery_list)
  list = []
  grocery_list.each do |sub_arr|
    sub_arr[1].times do |_| 
      list << sub_arr[0]
     end
  end
  list
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]