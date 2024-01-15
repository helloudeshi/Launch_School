# a = "forty two"
# b = "forty two"
# c = a

# puts a.object_id
# puts b.object_id
# puts c.object_id

# a = 42
# b = 42
# c = a

# puts a.object_id
# puts b.object_id
# puts c.object_id

def tricky_method(a_string_param, an_array_param)
  a_string_param << "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
