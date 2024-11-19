require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class TestExercice < Minitest::Test
  def test_kind
    value = 10.56
    assert_kind_of Numeric, value
  end

end

=begin
  
#assert_kind_of uses Object#kind_of? 
to check if the class of its second argument is 
an instance of the named class or 
one of the named class's subclasses.
  
=end