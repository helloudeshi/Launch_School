 # code 1
class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    template
  end
end
 # and code 2

 class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    self.template
  end
end


=begin
there is no difference in both code 1 and code 2
In the code 2 `self` doesn't require to run the code
In Ruby `show_template` is a getter method, it doesn't require `self` 
unlike setter method
=end