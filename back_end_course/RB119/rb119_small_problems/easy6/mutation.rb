array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

=begin   
 if we don't want to change array2 along with array 1 we can use `dup`
method for values, as below 

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
p array2 # ["Moe","Larry","Curly","Shemp","Harpo","Chico","Groucho","Zeppo"]
p array1 # ["Moe", "Larry", "CURLY", "SHEMP", "Harpo", "CHICO", "Groucho", "Zeppo"]
=end