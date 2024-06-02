
def map(arr)
  result = []
  index = 0 
  while index < arr.length
    result << yield(arr[index])
    index +=1
  end
  result
  end
  
  string = ['a', 'b' , 'c']
  new_string = map(string){|char| char}
  p new_string
