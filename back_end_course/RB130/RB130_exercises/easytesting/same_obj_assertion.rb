require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class List
  def initialize
    @list = 'list'
  end

  def process
    self
  end
end

class TestExercice < Minitest::Test
  def test_same_obj
    value = List.new
    assert_same value, value.process
  end
end
