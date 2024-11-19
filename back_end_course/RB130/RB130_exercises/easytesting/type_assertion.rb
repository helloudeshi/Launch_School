require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class TestExercice < Minitest::Test
  def test_instance_of_numeric
    value = Numeric.new
    assert_instance_of(Numeric, value)
  end

end