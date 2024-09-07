class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    quantity = updated_count if updated_count >= 0
  end
end

=begin   
to avoid to fail update_quantity method call
Since quantity is an instance variable, it must be accessed with 
the @quantity notation when setting it. 
One way to fix this is to change attr_reader to attr_accessor 
and change quantity to self.quantity.

Is there anything wrong with fixing it this way?
 In the second method you give access to public interface of the class 
 i.e. you are allowing clients of the class to 
 change the quantity directly as below
 --> instance.quantity = <new value> rather than going through
 `update_quantity` method. 
=end