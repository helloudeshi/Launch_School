class InvoiceEntry
  attr_reader  :product_name
  attr_writer :quantity

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    self.quantity = updated_count if updated_count >= 0
  end
end

rice = InvoiceEntry.new('Rice', 5)
puts rice.update_quantity(6)
p rice

=begin
To update the quantity with method call `update_quantity`
  1. we can change quantity to setter method and then change
   the instance variable in the `update_quantity` as below
   self.quantity = updated_count if updated_count >=0 
  2. reference the instance variable directly within the method like below
  @quantity = updated_count if updated_count >= 0 
=end 
