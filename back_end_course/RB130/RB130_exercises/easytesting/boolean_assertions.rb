 require 'minitest/autorun'

class TestExercice < Minitest::Test
  def test_odd
    value = 15
    assert value.odd?
  end
end

