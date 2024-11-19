class Tree
 include Enumerable

 def each 
 end 

end

p [1,2,3].select{|el| el > 2} == [3]
p [1,2,3].max == 3
p 4 > 5  == false 