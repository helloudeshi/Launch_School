def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  attempts = 0
  puts "winning_number = #{winning_number}"

  loop do
    attempts += 1
    break if attempts > max_attempts

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
      break
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number
    end
  end
  play_again(max_number, max_attempts)
end

def play_again(max_number, max_attempts)
  puts 'Do you want paly again?'
  answer = gets.chomp
  if answer == 'yes'
    guess_number(max_number, max_attempts)
  else
    puts 'Thank you'
  end
end

guess_number(10, 3)
