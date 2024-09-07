class Greeting
  def greet(message)
    puts message
  end
end

# we can't simply call `greet` in the self.hi method definition
# because `Greeting` class itself only defines `greet` on its instances, 
# rather than on the `Greeting` class itself
class Hello < Greeting
  def self.hi
    greeting = Greeting.new
    greeting.greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

Hello.hi