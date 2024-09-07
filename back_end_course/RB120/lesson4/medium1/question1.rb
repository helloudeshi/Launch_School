class BankAccount
   attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def positive_balance?
    balance >= 0 # no need @ here
  end
end

td = BankAccount.new(100)
puts td.positive_balance?

=begin
- attr_reader for the `balance` variable means that 
Ruby will automatically create a method called `balance` that 
returns the value of the @balnce instance variable
- if there is no attr_reader / writer methods @ should be there 
=end