=begin    
Create a method that takes a string argument that 
consists entirely of numeric digits and computes 
the greatest product of four consecutive digits 
in the string. The argument will always have 
more than 4 digits.

p greatest_product('23456') == 360      # 3 * 4 * 5 * 6
p greatest_product('3145926') == 540    # 5 * 9 * 2 * 6
p greatest_product('1828172') == 128    # 1 * 8 * 2 * 8
p greatest_product('123987654') == 3024 # 9 * 8 * 7 * 6

=end

def greatest_product(int)
  four_integers = []
  (0..int.length-4).each do |start_idx|
    four_integers << int[start_idx,4]
  end 
  product = []
  four_integers.each do |sub_num|
    count = 1
    sub_num.chars.each do |num|
      count *= num.to_i 
    end
    product << count
  end
  product.max
end

p greatest_product('23456') == 360      # 3 * 4 * 5 * 6
p greatest_product('3145926') == 540    # 5 * 9 * 2 * 6
p greatest_product('1828172') == 128    # 1 * 8 * 2 * 8
p greatest_product('123987654') == 3024 # 9 * 8 * 7 * 6
