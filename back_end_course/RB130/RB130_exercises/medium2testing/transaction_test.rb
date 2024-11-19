=begin
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class TransactionTest < Minitest::Test
  
  def setup
    @transaction = Transaction.new(30)
  end

  def test_prompt_for_payment
    input = StringIO.new("30\n")
    capture_io{@transaction.prompt_for_payment(input: input)}
    assert_equal 30, @transaction.amount_paid
  end
end
=end

# second method 
#here we will create a mock object for output
#Within the method we use output object and call StringIO#puts
#the string passed to puts get stored within the StringIO object, it isn't output to the user.

require 'minitest/autorun'
require_relative 'transaction'
require 'minitest/reporters'
Minitest::Reporters.use!

class TransactionTest < Minitest::Test
  def test_prompt_for_payment
    transaction = Transaction.new(30)
    input = StringIO.new('30')
    output = StringIO.new
    transaction.prompt_for_payment(input: input, output: output)
    assert_equal 30, transaction.amount_paid
  end
end
