class Greeting 
  def greet(say_greet)
    puts say_greet
  end
end

class Hello < Greeting
  def hi
     greet("Hello")
  end
end

class GoodBye < Greeting
  def bye 
    greet("Goodbye")
  end
end

hey = Hello.new 
hey.hi 

by = GoodBye.new
by.bye
