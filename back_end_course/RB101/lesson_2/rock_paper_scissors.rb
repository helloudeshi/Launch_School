def prompt(message)
  puts "=> #{message}"
end

INPUT = %w[rock paper scissors]

def ask_user_input
  user_choice = ''
  loop do
    prompt("Enter your choice : ")
    user_choice = Kernel.gets.chomp()
    if INPUT.include?(user_choice)
      break
    else
      prompt("OOps.. wrong input. Enter one of these #{INPUT}")
    end
  end
  user_choice
end

def game
  prompt("Welcome to Rock paper scissors game. Enter your name:")
  name = Kernel.gets.chomp()
  prompt("Hi #{name}. Let's begin..!")
  loop do
    your_choice = ask_user_input
    puts "User choice received is: #{your_choice}"
    machine_choice = INPUT.sample
    prompt("Machine choice is: #{machine_choice}")
    if your_choice == machine_choice
      prompt("It's a tie")
    elsif ((your_choice == 'rock') && (machine_choice == 'paper')) ||
          ((your_choice == 'paper') && (machine_choice == 'scissors')) ||
          ((your_choice == 'scissors') && (machine_choice == 'rock'))
      prompt('ooh..you lose. try again')
    else
      prompt('yay..You win!')
    end
    prompt("Do you want to play again. (enter 'Y' to play)")
    answer = gets.chomp
    if answer.downcase == 'y'
      prompt("Thank you..!")
    else
      break
    end
  end
end

game
