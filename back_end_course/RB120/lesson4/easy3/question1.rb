class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

# hello = Hello.new
# hello.hi #  Hello

# hello = Hello.new
# hello.bye # No method error

# hello = Hello.new
# hello.greet #argumnet error

# hello = Hello.new
# hello.greet("Goodbye") #Good bye

# Hello.hi #no method hi for Hello class 
