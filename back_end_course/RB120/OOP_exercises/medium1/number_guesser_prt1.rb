
class GuessingGame
  NUMBER_OF_GUESSES = 7

  attr_accessor :guesses
  attr_reader  :number
  
  def initialize 
    @guesses = NUMBER_OF_GUESSES
    @number = rand(1..100)
  end

  def play 
    loop do 
      puts "You have #{guesses} guesses remaining"
      puts "Enter a number between 1 and 100:"
      answer = gets.chomp.to_i

      unless valid_number?(answer)
        puts "Invalid guess. Enter a number between 1 and 100:"
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
    (1..100).to_a.include?(num)
  end


  def display_msg
    if self.guesses.zero? 
      puts ""
      puts "You have no more guesses. You lost!"
    end
  end
end

game = GuessingGame.new
game.play


=begin   

class GuessingGame

  NUMBER_OF_GUESSES = 7

  def play 
    remaining_guesses = 7 

    loop do 
    puts "You have #{remaining_guesses} guesses remaining."
    remaining_guesses -= 1
    player_guess = get_number
    end
    check_answer
    break if remaining_guesses == 0 || user.win?
    display_msg
    play_again?
  end

  def get_number
    answer = nil 
    loop do
      puts "Enter a number between 1 and 100:" 
      answer = gets.chomp.to_i
      break if (1..100).to_a.include?(answer)
      puts "Invalid guess. Enter a number between 1 and 100:"  
      
    end
   answer
  end

end

  end

end


game = GuessingGame.new
game play
=end