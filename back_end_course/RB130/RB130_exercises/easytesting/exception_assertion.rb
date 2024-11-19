require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class NoExperienceError < StandardError; end # NoExperienceError should be subclass of this. Otherwise it will give an error

class Employee 
  def initialize 
    @experience = false
  end

  def hire 
    raise NoExperienceError unless @experience
    @hired = true
  end

end

class TestExercice < Minitest::Test
  def test_raise_error
    assert_raises(NoExperienceError ) do 
      employee = Employee.new
      employee.hire
    end
  end
end