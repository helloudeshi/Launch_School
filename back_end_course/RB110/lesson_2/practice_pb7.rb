a = 2
b = [5, 8]
arr = [a, b] # [2, [5,8]]

arr[0] += 2 # this is not affecting to a , a is still 2, but arr[0] = 4
arr[1][0] -= a # arr[1][0] = 5-2 i.e. b--> [3,8]

p a 
p b
p arr