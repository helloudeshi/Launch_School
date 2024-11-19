# def one?(arr)
#   result_arr = arr.map { |el| true if yield(el) }
#   result_arr.count(true) == 1
# end

# to return true once it found second true 

def one?(arr)
  true_counter = 0
  arr.each do |el|
    true_counter += 1 if yield(el)
    return false if true_counter == 2
  end 
  true_counter == 1
end

p one?([1, 3, 5, 6]) { |value| value.even? }    # -> true
p one?([1, 3, 5, 7]) { |value| value.odd? }     # -> false
p one?([2, 4, 6, 8]) { |value| value.even? }    # -> false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } # -> true
p one?([1, 3, 5, 7]) { |_value| true }           # -> false
p one?([1, 3, 5, 7]) { |_value| false }          # -> false
p one?([]) { |_value| true }                     # -> false
