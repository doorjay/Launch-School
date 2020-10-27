# Tic-Tac-Toe! 

=begin 
Tic tac toe is a 2 player game played on a 3x3 board. Each player takes a turn and marks
an empty square on the board. First player to reach 3 squares with their mark in a row, whether
that is horizontal, vertical, or diagonal, wins the game. If all 9 squares are marked and
no players have three in a row, the game is a tie. 

HERE IS HOW THE GAME SHOULD LOOK 

1. Show the initial 3x3 board, empty 
2. Ask the user to mark a square. 
3. have the computer mark a square. 
4. Show the new baord with both marks 
5. If there's a winner, display winner 
6. If the board is full, display tie
7. Else loop it again starting with #2 
8. Would you like to play again? 
9. If yes go to #1 
10. Thanks for playing! 
=end 

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X' 
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +   # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols 
                  [[1, 5, 9], [3, 5, 7]]              # diagonals

def prompt(msg) 
  puts "=> #{msg}"
end 

def joinor(arr, delimiter=', ', word='or') 
  case arr.size
  when 0 then '' 
  when 1 then arr.first 
  when 2 then arr.join(" #{word} ") 
  else 
    arr[-1] = "#{word} #{arr.last}" 
    arr.join(delimeter) 
  end 
end 

def display_board(brd)
  system clear
  puts "You are the X's and the Computer is the O's"
  puts ""
  puts "     |     |" 
  puts "   #{brd[1]}  |   #{brd[2]}   |   #{brd[3]}" 
  puts "     |     |" 
  puts "-----+-----+-----" 
  puts "     |     |" 
  puts "   #{brd[4]}  |   #{brd[5]}   |   #{brd[6]}"
  puts "     |     |" 
  puts "-----+-----+-----" 
  puts "     |     |" 
  puts "   #{brd[7]}  |   #{brd[8]}   |   #{brd[9]}"
  puts "     |     |" 
  puts "" 
end 

def initialize_board
  new_board = {} 
  (1..9).each {|num| new_board[num] = INITIAL_MARKER} 
  new_board
end 

def empty_squares(brd) 
  brd.keys.select{|num| brd[num] == INITIAL_MARKER} 
end 

def player_places_piece(brd) 
  loop do 
    prompt "Choose any available square: #{joinor(empty_squares(brd))}" 
    square = gets.chomp.to_i 
    break if empty_squares(brd).include?(square)  
    prompt "Sorry that is not a valid space!"
  end 

  brd[square] = PLAYER_MARKER  
end 

def computer_places_piece!(brd)
  square = nil

  # offense is first to make sure the computer takes the win if it can
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  # to make sure it doesn't loose trying to win
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  # pick at random if ther's no winning or loosing pick and 5 is not available
  if !square
    if empty_squares.include?(brd[5]) 
      square = empty_squares(brd[5]) 
    else 
      square = empty_squares(brd).sample
    end 
  end

  brd[square] = COMPUTER_MARKER
end

def detect_winner(brd) 
  WINNING_LINES.each do |line| 
    if brd[line[0]] == PLAYER_MARKER && 
       brd[line[1]] == PLAYER_MARKER &&
       brd[line[2]] == PLAYER_MARKER 
       return 'Player' 
    elsif  brd[line[0]] == COMPUTER_MARKER && 
       brd[line[1]] == COMPUTER_MARKER &&
       brd[line[2]] == COMPUTER_MARKER 
       return "Computer"
      end 
    end 
    nil
end 

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil 
  end
end


loop do 
  board = initialize_board 

    loop do 
    display board(board)

    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board) 

    computer_places_piece(board) 
    break if someone_won?(board) || board_full?(board)
    end 

    display board(board)

    if someone_won?(board) 
      prompt "#{detect_winner(board)} won!"
    else 
      prompt "It's a tie!"
    end 
  
  prompt "Play again? (y or n)" 
  answer = gets.chomp 
  break unless answer.downcase.start_with?('y') 
end 

prompt "Thanks for playing Tic-Tac-Toe!" 