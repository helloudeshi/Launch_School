class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    #rules of play
  end

  def play 
    "Bingo Bingo"
  end
end

bingo = Bingo.new
p bingo.play

# Ruby search for the methods using look up path
# as soon as it finds the method return the output
# So here if there's a `play` method in `Bingo` class
# it will invoked first 