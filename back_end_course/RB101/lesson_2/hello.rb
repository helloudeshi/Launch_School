# Kernel.puts("hello world")

# ##### 1
# # Can you write the code necessary to get the desired output shown on the last line?
# make = 'Ford'
# model = 'Ranger'

# puts "Look! Its a #{make} #{model}!"
# # Look! It's a Ford Ranger!


# ##### 2
# # What will be output when we run this code? What concept is this demonstrating?

# my_cash = 10

# if my_cash >= 10
#   puts "One chocolate bar, please!"
# else
#   puts "I don't have 3 dollars to spend. :("
# end

# ##### 3

# # What code could we add to see each student printed with their respective grade?

students = ['Martin', 'Milo', 'Michelle']
grades = [94, 87, 98]

index = 0
while index < students.length
  puts '--------------'
  puts "#{students[index]} : #{grades[index]}"
  index += 1
end