# =begin 
# # What is output in this code?
# def remove_evens!(arr)
#   arr.each do |num|
#     if num % 2 == 0
#       arr.delete(num)
#     end
#   end
#   arr
# end

# p remove_evens!([1,1,2,3,4,6,8,9])
# =end

# =begin   
# # Demonstrate how to create an instance of the Textbook class. 
# class Book
#     def initialize(args)
#       @pages = args.fetch(:pages)
#       @title = args.fetch(:title)
#     end
#   end
  
#   class Textbook < Book
#     def initialize(args)
#       @chapters = args.fetch(:chapters)
#     end
#   end
# =end 

# # a = 7
# # array = [1, 2, 3]

# # def my_value(ary, a)
# #   ary.each do |b|
# #     a += b
# #   end
# # end

# # p my_value(array, a)
# # puts a

# my_favorite_foods.each do |food|
#     if food == 'avocado'
#       puts "I love #{food}, it's #{adjective.upcase!}!!!"
#     else
#       puts "I love #{food}, it's #{adjective}!"  
#     end
#    end


# ###
# # What is output when we run this code? What does this demonstrate?

# def hello
#     p 'Hello!'
#   end
  
#   if hello
#     puts 'Nice to meet you!'
#   else
#     puts 'Fine, be that way.'
#   end

#   def random_method(value)
#     "Truthy value!" unless value # if !value
#    end
   
#    # def random_method(value)
#    #   if !value
#    #     "Truthy value!"
#    #   else
#    #     nil
#    #   end
#    # end
   
#    if random_method(true)
#      new_value = "The if branch ran"
#    else
#      new_value = "The else branch ran"
#    end
   
#    p new_value


#    w = "red"
# x = "green"
# y = x
# z = w
# w = 'red'
# z.upcase!

# w = y
# x = z
# y = y
# z = x
  
# p w, x, y, z # "green" "red" "green" "red"
  
# # What will line 11 output and why?

# =begin
# w --> 'red
# w --> z --> "red"
# x --> y --> "green"
# =end



# # ----
# # w --> "green"
# # z --> "red"
# # x --> "red"
# # y --> "green"

# a = 'Sarah'
# b = ' Maxwell'
# c = a + b # "Sarah Maxwell"
# d = a << b 
  
# p a, b, c, d
  
# # What will line 6 output and why?
  
# # p c.object_id
# # p d.object_id

# def change_object(string)
#     string += "!"
#   end
  
#   a = "Value"
#   puts a       
#   puts change_object(a)
#   puts a

#   def format_name(first_name, last_name)
#     first_name += ' '
      
#     [first_name, last_name].each do |name|
#       name.capitalize!
#     end
      
#     first_name + last_name
#   end
    
#   first_name = 'tiger'
#   last_name = 'king'
    
#   formatted_name = format_name(first_name, last_name)
    
#   p first_name
#   p last_name
#   p formatted_name

#   def format_name(first_name, last_name)
#     first_name += ' ' # first name = first name 
  
#     [first_name, last_name].each do |name|
#       name.capitalize! # 
#     end
  
#     first_name + last_name
#   end
  
#   first_name = 'tiger'
#   last_name = 'king'
  
#   formatted_name = format_name(first_name, last_name)
  
#   p first_name # tiger 
#   p last_name # king
#   p formatted_name # Tiger King
  
  
#   =begin
#   outer scope:
#   first_name --> 'tiger' #ob 1
#   last_name --> 'King'  #ob 2
#   formatted_name --> 'Tiger King'
  
#   inner method scope:
#   first_name --> 'Tiger ' #ob 3
#   last_name --> 'King'  #ob 2
#   ['tiger ', 'king']  #ob 4
  
  
#   inner block scope:
#   name --> 'King' #ob 2
  
#   =end
#   a = 'Bob'
# b = 'Kate'

# 5.times do |a|
#   a = 'Bill'
#   b = 'Sarah'
# end

# p a # what is output and why? What concept does this demonstrate?


# =begin
# outer scope:
# a --> 'Bob'   #ob 1
# b --> 'Sarah'  #ob 5

# inner block scope:
# a --> 'Bill'   #ob 4
# =endc
  
  
#   ######
  
  
#   a = 'Bob'
#   b = 'Kate'
  
#   5.times do |a|
#     a = 'Bill'
#     b = 'Sarah'
#   end
  
#   p a # what is output and why? What concept does this demonstrate?

# def car(new_car)
#   make = make(new_car)
#   model = model(new_car)
#   [make, model]
# end

# def make(new_car)
#   new_car.split(" ")[0]
# end

# def model(new_car)
#   new_car.split(" ")[2]
# end

# make, model = car("Ford Mustang")
# p make == "Ford"         # => true
# p model.start_with?("M")rescue false # => NoMethodError: undefined method `start_with?' for nil:NilClass
# def change_name(word)
#   word = 'bob'      # does this reassignment change the object outside the method?
# end

# name = 'jim'
# change_name(name)
# puts name           # => jim

# def cap(str)
#   str.upcase!  # does this affect the object outside the method?
# end

# name = "jim"
# cap(name)
# puts name           # => Jim

# name = 'johnson'

# ['kim', 'joe', 'sam'].each do |fname|
#   # uh-oh, we cannot access the outer scoped "name"!
#   puts "#{name} #{fname}"
# end

numbers = [1, 2, 3, 4, 5]

while num = numbers.shift
  puts num
end