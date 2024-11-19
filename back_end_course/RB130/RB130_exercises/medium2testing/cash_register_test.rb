require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  attr_accessor :transaction

  def setup 
    @cash_register = CashRegister.new(1000)
    @transaction = Transaction.new(80)
  end

  def test_accept_money
    transaction.amount_paid = 100
    @cash_register.accept_money(transaction)
    assert_equal(1100, @cash_register.total_money)
  end

  def test_change
    transaction.amount_paid = 100
    assert_equal(20, @cash_register.change(transaction))
  end

  def test_give_recept
    assert_output("You've paid $#{transaction.item_cost}.\n") do 
      @cash_register.give_receipt(transaction)
    end
  end

  

end

