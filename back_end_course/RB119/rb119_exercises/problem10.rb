=begin   
Create a method that takes a string of digits 
as an argument and returns the number of even-numbered 
substrings that can be formed. For example, 
in the case of '1432', the even-numbered substrings are 
  '14', '1432', '4', '432', '32', and '2', for 
  a total of 6 substrings.

If a substring occurs more than once, 
you should count each occurrence as 
a separate substring.

p even_substrings('1432') == 6
p even_substrings('3145926') == 16
p even_substrings('2718281') == 16
p even_substrings('13579') == 0
p even_substrings('143232') == 12
=end

def even_substrings(num_str)
  even_count = 0
  num_arr = all_substrings(num_str)
  num_arr.each do |sub_num|
    even_count +=1 if sub_num.to_i.even?
  end
  even_count
end

def all_substrings(num_str)
  all_num_str = []
  (0...num_str.size).each do |start_idx|
    (start_idx...num_str.size).each do |end_idx|
      all_num_str << num_str[start_idx..end_idx]
    end
  end
all_num_str
end

p even_substrings('1432') == 6
p even_substrings('3145926') == 16
p even_substrings('2718281') == 16
p even_substrings('13579') == 0
p even_substrings('143232') == 12