module Walkable
  def walk 
   puts "#{self} #{gait} forward"
  end
 end
 
 class Person 
   attr_reader :name
   include Walkable
 
   def initialize(name)
     @name = name
   end

   def to_s
    name
   end
 
   private
 
   def gait
     "strolls"
   end
 end
 
 class Noble
  attr_reader :name, :title
  include Walkable

  def initialize(name, title)
    @name = name
    @title = title
  end

  def to_s
   "#{title} #{name}"
  end
 
  private
 
   def gait
     "struts"
   end

 end

 
 
 
 mike = Person.new("Mike")
 mike.walk
 # => "Mike strolls forward"
 
 byron = Noble.new("Byron", "Lord")
 byron.walk