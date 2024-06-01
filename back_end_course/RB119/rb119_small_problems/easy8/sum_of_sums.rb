=begin    
P: i/p - array of numbers 
   o/p - sum of the sums of each leading subsequence for that array

   Algo:
   - itearte through array to get sub arrays 
      every iteartion start with 1st element of the array
      end index go to oth to arry size -1 
      get the sum of the each sub array and add to total_sum

      return total sum


      
=end

def sum_of_sums(arr)
  total_sum = 0
  (0..arr.size).each do |end_index|
    sub_arr = arr.slice(0, end_index)
    #p sub_arr
    total_sum += sub_arr.sum
  end
  p total_sum


end

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35