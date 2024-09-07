class GuessingGame
  NUMBER_OF_GUESSES = 7

  attr_accessor :guesses
  attr_reader  :number
  
  def initialize(low_value, high_value)
    @guesses = NUMBER_OF_GUESSES
    @low_value = low_value
    @high_value = high_value
    @number = rand(@low_value..@high_value)
  end

  def play 
    loop do 
      puts "You have #{guesses} guesses remaining"
      puts "Enter a number between #{@low_value} and #{@high_value}:"
      answer = gets.chomp.to_i

      unless valid_number?(answer)
        puts "Invalid guess. Enter a number between #{@low_value} and #{@high_value}:"
        answer = gets.chomp.to_i
      end

      if answer < number
        puts "Your guess is too low."
        self.guesses -= 1
      elsif answer > number
        puts "Your guess is too high."
        self.guesses -= 1
      elsif answer == number  
        puts "That's the number"
        puts "You won!"
        break
      end
      break if self.guesses.zero?
    end
    display_msg 
  end

  def valid_number?(num)
    (@low_value..@high_value).to_a.include?(num)
  end


  def display_msg
    if self.guesses.zero? 
      puts ""
      puts "You have no more guesses. You lost!"
    end
  end
end

game = GuessingGame.new(501,1500)
game.play