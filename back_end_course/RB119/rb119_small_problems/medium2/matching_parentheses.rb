=begin   
 Pro : i/p - string with parentheses
        o/p - if parenheses are balanced true, unless false

Algo:
  - create a variable to store '(' 
  -iterate over string
  -append if char == '('
  -if char == ')' and arr is empty return false since it cant be start from ')'
              - delete '(' from arra
  
return boolean value by checking  arr is empty or not - empty arr - true unless false
 
=end

def balanced?(sentence)
  arr =[]
  sentence.each_char do |char|
    if char == '(' 
      arr << char
    elsif char == ')'
      return false if arr.empty?
      arr.pop
    end 
  end
  arr.empty?
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false