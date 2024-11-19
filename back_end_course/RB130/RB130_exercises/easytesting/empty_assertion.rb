require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class TestExercice < Minitest::Test
  def test_list
    arr = Array.new
    # arr << 'car'
    # assert_empty arr
    # assert_eqaul([],arr)
    assert_equal(true, arr.empty?)
  end
end
