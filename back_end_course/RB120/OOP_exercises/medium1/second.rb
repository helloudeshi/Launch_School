=begin   
-check the entered number is a valid number 
 - then check the number low or high to the generated number 
 -break if user win or no more guesses
if it is not a valid number 
  -print msg and get number and then check.
=end 

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
You have 7 guesses remaining.
Enter a number between 1 and 100: 104
Invalid guess. Enter a number between 1 and 100: 50
Your guess is too low.

You have 6 guesses remaining.
Enter a number between 1 and 100: 75
Your guess is too low.

You have 5 guesses remaining.
Enter a number between 1 and 100: 85
Your guess is too high.

You have 4 guesses remaining.
Enter a number between 1 and 100: 0
Invalid guess. Enter a number between 1 and 100: 80

You have 3 guesses remaining.
Enter a number between 1 and 100: 81
That's the number!

You won!

game.play

You have 7 guesses remaining.
Enter a number between 1 and 100: 50
Your guess is too high.

You have 6 guesses remaining.
Enter a number between 1 and 100: 25
Your guess is too low.

You have 5 guesses remaining.
Enter a number between 1 and 100: 37
Your guess is too high.

You have 4 guesses remaining.
Enter a number between 1 and 100: 31
Your guess is too low.

You have 3 guesses remaining.
Enter a number between 1 and 100: 34
Your guess is too high.

You have 2 guesses remaining.
Enter a number between 1 and 100: 32
Your guess is too low.

You have 1 guess remaining.
Enter a number between 1 and 100: 32
Your guess is too low.

You have no more guesses. You lost!
=end