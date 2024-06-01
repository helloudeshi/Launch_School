#  - pro: i/p - array of integers
#         o/p - sorterd array
#
#   Algo :
#    - itearte through array
#    -check 1st two numbers
#    -swap two numbers in ascending order
#       use temp_variable to store 1st number

def bubble_sort!(arr)
  loop do
    swap = false
    (0...arr.size - 1).each do |index|
      next unless arr[index] > arr [index + 1]

      temp = arr[index]
      arr[index] = arr[index + 1]
      arr[index + 1] = temp
      swap = true
    end
    break if swap == false
  end
  arr
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1,2,4,6,7]

array = %w[Sue Pete Alice Tyler Rachel Kim Bonnie]
bubble_sort!(array)
p array == %w[Alice Bonnie Kim Pete Rachel Sue Tyler]
