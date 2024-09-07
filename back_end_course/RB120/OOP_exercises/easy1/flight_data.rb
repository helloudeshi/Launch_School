class Flight
  attr_accessor :database_handle :flight_number

  def initialize(flight_number)
    @database_handle = Database.init
    @flight_number = flight_number
  end
end

