=begin   
You are going to be given an array of integers. Your job is to take 
taht array nd find an index N, where the sum of the 
integers to the left of N is equal to the sum of the 
integers to the right of N. If there is no index that 
would make this happen return -1

test cases :

p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([120,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3

P:
input - array of integers 
output - index of which right side and left side of array sum are equal


Algo:
itearte through array
- keep the current index in a variable
- check the sum of both sides 
if the sum of both sides f the current index 
  return the current index
else go to next iteration
  after all iteartion if it is not equal return -1


=end 

def find_even_index(num_arr)
  current_index = -1
  (0...num_arr.length).each do |index|
    if num_arr.slice(0,index).sum == num_arr.slice(index+1,num_arr.length).sum
      current_index = index
    end
  end 
    current_index
end

p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
