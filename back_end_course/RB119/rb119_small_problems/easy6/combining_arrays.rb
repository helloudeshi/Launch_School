def merge(arr1, arr2)
  # ((arr1.push(arr2)).flatten).uniq
  arr1 | arr2 # using union operator- merge two arrays with no duplicates
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
