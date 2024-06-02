require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system 'clear'
  puts "You are #{PLAYER_MARKER} & computer is #{COMPUTER_MARKER}"
  puts "+---+---+---+"
  puts "| #{brd[1]} | #{brd[2]} | #{brd[3]} |"
  puts "+---+---+---+"
  puts "| #{brd[4]} | #{brd[5]} | #{brd[6]} |"
  puts "+---+---+---+"
  puts "| #{brd[7]} | #{brd[8]} | #{brd[9]} |"
  puts "+---+---+---+"
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr,separator= ',', str = 'or')
  return '' if arr.size == 0
  if arr.count >= 2
    arr[-1]= "#{str} #{arr.last}"
    arr.join(separator)
  else 
    arr.first.to_s
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}): "
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full(brd)
  empty_squares(brd) == []
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  winning_lines = [[1, 2, 3], [4, 5, 6], [7, 8, 9],
                   [1, 4, 7], [2, 5, 8], [3, 6, 9],
                   [1, 5, 9], [3, 5, 7]]
  winning_lines.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

loop do
  board = initialize_board
  display_board(board)
  
  player_total_games = 0
  computer_total_games = 0

  loop do
    display_board(board)

    player_places_piece!(board)
    break if someone_won?(board) || board_full(board)
    player_total_games += 1

    computer_places_piece!(board)
    break if someone_won?(board) || board_full(board)
    computer_total_games +=1
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    p "computer_total_games is #{computer_total_games}"
    p "player_total_games is #{player_total_games}"
  else
    prompt "It's a tie!"
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break if answer.downcase.start_with?('n')
end
prompt " Thank you for playing Tic Tac Toe.. Good bye!"
