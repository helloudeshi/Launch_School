class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

class RoadTrip < Oracle
  def choices
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end

trip = RoadTrip.new
p trip.predict_the_future # we call the method on an instance of Roadtrip
# therefore Ruby first search the method on RoadTrip, Then look into parent calss

oracle = Oracle.new 
p oracle.predict_the_future