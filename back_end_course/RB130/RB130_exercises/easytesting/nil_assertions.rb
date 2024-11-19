require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class TestExercice < Minitest::Test
  def test_value
    value = puts 'fasle'
    assert_nil(value)
  end
end
