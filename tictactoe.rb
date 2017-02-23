require_relative 'board.rb'

puts 'Starting tic-tac-toe...'
puts
players = ['X', 'O']
current_player = players[rand(2)]
b = Board.new(current_player)
puts
b.display()
puts

# Main Loop

while not b.board_full() and not b.winner()
  b.request_move(current_player)
  current_player = b.get_next_turn()
  b.display
  puts
end

if b.winner()
  puts "Player " + b.get_next_turn() + " wins."
else
  puts "Tie Game."
end

puts "Game Over."
