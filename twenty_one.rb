GAME_VALUE = 21
DEALER_MAX = GAME_VALUE * (2/3) 

def prompt(string) 
  puts "=> #{string}" 
end 

def initialize_deck
  deck = {}
  suits = ['Hearts', 'Diamonds', 'Clubs', 'Spades']
  suits.each do |suit|
    deck[suit] = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']
  end
  deck
end

def deal_card!(deck, player)
  suit = deck.keys.sample
  value = deck[suit].sample
  card = { suit => value }
  deck[suit].delete(value)
  player << card
end 

def total(cards) 
  values = cards.map { |card| card[1] }  

  sum = 0 
  values.each do |value| 
    if value == "Ace" 
      sum += 11 
    elsif value.to_i == 0 # Jack, King, Queen 
      sum += 10 
    else 
      sum += value.to_i 
    end 
  end 

  # This is for the ace is they go over the GAME_VALUE
  values.select { |value| value == "Ace" }.count.times do 
    sum -= 10 if sum > GAME_VALUE 
  end 

  sum 
end 

def busted?(player) 
  if (player == player_hand) && (player_total > GAME_VALUE) 
    true 
  elsif (player == dealer_hand) && (player_total > GAME_VALUE) 
    true 
  else 
    false 
  end
end 

def game_results(dealer, player) 
  if player > GAME_VALUE
    :player_busted 
  elsif dealer > GAME_VALUE
    :dealer_busted 
  elsif dealer < player
    :player 
  elsif dealer > player
    :dealer 
  else 
    :tie 
  end 
end 

def display_results(dealer, player) 
  result = game_results(dealer, player) 

  if :player_busted 
    prompt "You busted! The House wins!" 
  elsif :dealer_busted 
    prompt "The Dealer busted! You win!" 
  elsif :player 
    prompt "You win!" 
  elsif :dealer 
    prompt "The House wins!" 
  else 
    prompt "It's a tie!" 
  end 
end 

def play_again? 
  puts "---------------"
  prompt "Play again?" 
  answer = gets.chomp.downcase 
  if answer == 'y'
    true 
  else 
    false
  end
end 


# main loop

loop do 
  prompt "Welcome to Twenty-One!" 

  deck = initialize_deck 
  player_hand = []
  dealer_hand = []

  2.times do 
   deal_card!(deck, player_hand) 
   deal_card!(deck, dealer_hand)  
  end  

  player_total = player_hand.total 
  dealer_total = dealer_hand.total 

  prompt "The Dealer has #{dealer_hand[0, 1]} and ?" 
  prompt "You have: #{player_hand}, for a total of #{player_total}." 

  # PLAYER TURN
  loop do 
    answer = nil
    loop do 
      prompt("hit or stay?") 
      answer = gets.chomp 
      break if answer == 'stay' || busted? #method to be 
      
      deal_card!(DECK, player_hand) 
      prompt "You have: #{player_hand}, for a total of #{player_total}." 
    end 

    if busted? 
      display_results play_again? 
    else 
      prompt("You chose to stay!") #if they didn't bust they get here 
    end 
  end

  # DEALER TURN
  prompt "Dealer turn..."

  loop do
    break if dealer_total >= DEALER_MAX

    prompt "Dealer hits!"
    deal_card!(DECK, dealer_hand) 
    prompt "Dealer's cards are now: #{dealer_hand}"
  end

  if busted?(dealer_hand)
    prompt "Dealer total is now: #{dealer_total}"
    display_result(dealer_hand, player_hand)
    play_again? ? next : break
  else
    prompt "Dealer stays at #{dealer_total}"
  end

  # both player and dealer stays, compare cards tp decide the winner!
  puts "=============="
  prompt "Dealer has #{dealer_hand}, for a total of: #{dealer_total}"
  prompt "Player has #{player_hand}, for a total of: #{player_total}"
  puts "=============="

  display_result(dealer_hand, player_hand)

  break unless play_again? 
end 