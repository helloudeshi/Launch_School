class Animal
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new
cat1.color  # Cat Animal Object Kernel BasicObject
## since color method is not here it searches every class and module in the search path

