class Book 
  attr_reader :author, :title

  def initialize(author, title)
    @author = author
    @title = title
  end

  def to_s 
    %("#{title}" , by #{author})
  end


end

book = Book.new("Neil Stephenson", "Snow Crash")
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)

=begin    
# further exploration 
code snippet
def title
  @title
end

def author
  @author
end

Would this change the behavior of the class in any way? If so, how? If not, why not? 
Can you think of any advantages of this code?
  Above code snippets are manual getter method. This would not change
  the behavior of the class. This is same as attr_reader method.
  Though there is no conciseness, in the above code, There are advantages 
  of difining getter methods explicitly.
  1. developer reading the class definition more clearly
  informed of the getters of the class. Just as importantly 
  it is clear that `title` and `author` return the objects refernced by the 
  instance variables themselves, so any outside mutations will affect 
  these instance variables. This might not clear by just invoking attr_reader method
  2. It provides staging area for custom implementations of the `title` and 
  `author` getters (i.e. properly formatting the @title and @author during retrieval.)
  -For example, we wanted to capitaize the name and title, 
  we could call #capitalize on @name and @title within their respective methods.

=end
