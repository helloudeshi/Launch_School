require 'pry'

SUITS = ['H', 'D', 'C', 'S']
VALUES = %w(1 2 3 4 5 6 7 8 9 10 j q k a)

def initialize_deck
  crd_pairs = []
  SUITS.map do |suit|
    VALUES.each do |value|
      crd_pairs << [suit, value]
    end
  end
  crd_pairs.shuffle
end

def total(crds)
  values = crds.map { |crd| crd[1] }

  sum = 0
  values.each do |value|
    sum += if value == 'a'
             11
           elsif value.to_i == 0
             10
           else
             value.to_i
           end
  end

  # correct for aces
  values.select { |value| value == 'a' }.count.times do
    sum -= 10 if sum > 21
  end
  sum
end

def busted?(cards)
  total(cards) > 21
end

# :tie, :dealer, :player, :dealer_busted?, :player_busted?
def detect_result(dealer_crds, player_crds)
  player_total = total(player_crds)
  dealer_total = total(dealer_crds)

  if player_total > 21
    :player_busted?
  elsif dealer_total > 21
    :dealer_busted?
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_crds, player_crds)
  result = detect_result(dealer_crds, player_crds)

  case result
  when :player_busted?
    puts "You busted! Dealer wins!"
  when :dealer_busted?
    puts "Dealer busted! You win!"
  when :player
    puts "You win!"
  when :dealer
    puts "Dealer wins!"
  when :tie
    puts "It's a tie!"
  end
end

def play_again?
  puts "-------------"
  puts "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

loop do
  puts "welcome to Twenty-One!"
  # initialize vars
  deck = initialize_deck
  player_crds = []
  dealer_crds = []

  # initial deal
  2.times do
    player_crds << deck.pop
    dealer_crds << deck.pop
  end

  puts "Dealer has #{dealer_crds[0]} and ?"
  puts "You have #{player_crds[0]} and #{player_crds[1]},
       for a total of #{total(player_crds)}."

  # player turn
  loop do
    player_turn = nil
    loop do
      puts "Would you like to hit or stay?"
      player_turn = gets.chomp.downcase
      break if ['h', 's'].include?(player_turn)
      puts "Sorry, must enter 'h' or 's'. "
    end

    if player_turn == 'h'
      player_crds << deck.pop
      puts "You chose to hit!"
      puts " Your cards are now #{player_crds}"
      puts "Your total is now : #{total(player_crds)}"
    end

    break if player_turn == 's' || busted?(player_crds)
  end

  if busted?(player_crds)
    display_result(dealer_crds, player_crds)
    play_again? ? next : break
  else
    puts "You stayed at #{total(player_crds)}"
  end

  # dealer turn
  puts "Dealer turn.."

  loop do
    break if total(dealer_crds) >= 17

    puts "Dealer hits!"
    dealer_crds << deck.pop
    puts "Dealer's card are now : #{dealer_crds}"
  end

  if busted?(dealer_crds)
    puts "Dealer total is now: #{total(dealer_crds)}"
    display_result(dealer_crds, player_crds)
    play_again? ? next : break
  else
    puts "Dealer stays at #{total(dealer_crds)}"
  end

  # both player and dealer stays - compare cards!
  puts "=============="
  puts "Dealer has #{dealer_crds}, for a total of: #{total(dealer_crds)}"
  puts "Player has #{player_crds}, for a total of: #{total(player_crds)}"
  puts "=============="

  display_result(dealer_crds, player_crds)

  break unless play_again?
end

puts "Thank you for playing Twenty-One! Good bye!"
