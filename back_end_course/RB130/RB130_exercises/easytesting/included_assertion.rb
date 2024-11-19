require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class TestExercice < Minitest::Test
  def test_included
    arr = [1,2,3,5,'xyz']
    assert_includes(arr, 'xyz')
    # assert_equal true, list.include?('xyz')
  end

end