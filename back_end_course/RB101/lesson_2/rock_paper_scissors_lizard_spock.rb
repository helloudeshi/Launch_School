def prompt(message)
  puts "=> #{message}"
end

INPUT = %w[rock paper scissors lizard spock]

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

def who_win?(first, second)
  ((first == 'paper') && (second == 'rock')) ||
    ((first == 'rock') && (second == 'scissors')) ||
    ((first == 'scissors') && (second == 'paper')) ||
    ((first == 'lizard') && (second == 'paper')) ||
    ((first == 'rock') && (second == 'lizard')) ||
    ((first == 'scissors') && (second == 'lizard')) ||
    ((first == 'spock') && (second == 'rock')) ||
    ((first == 'spock') && (second == 'scissors')) ||
    ((first == 'paper') && (second == 'spock')) ||
    ((first == 'lizard') && (second == 'spock'))
end

def display_results(win_count)
  if win_count == 3
    prompt("Ohh.. computer is the grand winner..! Try again.")
  else
    prompt("Congratulations..!! you are the grand winner..!")
  end
end

def game
  prompt("Welcome to Rock paper scissors lizard spock game. Enter your name:")
  name = Kernel.gets.chomp()
  prompt("Hi #{name}. Let's begin..!")
  m_win_count = 0
  u_win_count = 0
  loop do
    your_choice = ask_user_input
    puts "User choice received is: #{your_choice}"
    machine_choice = INPUT.sample
    prompt("Machine choice is: #{machine_choice}")
    if who_win?(your_choice, machine_choice)
      prompt('yay..You win!')
      u_win_count += 1
    elsif who_win?(machine_choice, your_choice)
      prompt('ooh..you lose. try again')
      m_win_count += 1
    else
      prompt("It's a tie..!")
    end
    # prompt("Do you want to play again. (enter 'Y' to play)")
    # answer = gets.chomp
    break if (m_win_count == 3) || (u_win_count == 3)
  end
  display_results(m_win_count)
  prompt("Thank you..!")
end

game
