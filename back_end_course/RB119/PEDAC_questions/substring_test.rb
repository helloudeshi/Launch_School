=begin   
given 2 strings , Your job is to find out if there is a 
substring that appears in both strings. 
return true if you find a substring that appears in both 
strings, or flase if you do not. 
  only care about substrings that are longer 
  than one letter 

  test cases: 
  p substring_test('Something', 'Fun') == false
  p substring_test('Something', 'Home') == true
  p substring_test('Something', '') == false
  p substring_test('' , 'Something') == false
  p substring_test('BANANA', 'banana') == true
  p substring_test('test', '11lt') == false
  p substring_test('', '') == false
  p substring_test('1234567', '541265') == true

P:
input - two strings 
output - boolean true or false 
  true - if two string have common sub string 
 Case doesn't matter 
E:

D:

A:
take min size string from the array
take substring from it by itarating 
check the other string consists that sub string
- if it is consists return true
  -unless return flase



=end
def substring_test(str1,str2)
  # min_str = [str1, str2].min_by(&:size).downcase
  # max_str = ([str1, str2].max_by(&:size)).downcase
  (0...str1.size).each do |strt_index|
    (strt_index + 2..str1.size).each do |end_index|
      sub_str = str1.slice(strt_index,end_index).downcase
      return true if str2.downcase.include?(sub_str)
    end 
  end 
  false
end


p substring_test('Something', 'Fun') == false
p substring_test('Something', 'Home') == true
p substring_test('Something', '') == false
p substring_test('' , 'Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', '11lt') == false
p substring_test('', '') == false
p substring_test('1234567', '541265') == true
