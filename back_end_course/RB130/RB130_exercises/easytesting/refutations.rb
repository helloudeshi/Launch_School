require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class TestExercice < Minitest::Test 
  def test_refutations
    arr = [1,2,3]
    refute_includes arr, 'xyz'
  end
end