require_relative 'lib/board'
require_relative 'lib/player'
require_relative 'lib/result'

# Array to keep track of user input
game_board = [1, 2, 3, 4, 5, 6, 7, 8, 9]

# Initial board display
puts 'Initial Board'
new_board = Board.new
new_board.display_board(game_board)

puts "\nPlayer 1 : X"
puts 'Player 2 : O'
puts

# Create player 1 and player 2 objects
player1 = Player.new
player2 = Player.new

# Loop until game won or drawn
game_won = false
game_drawn = false
until game_won || game_drawn
  # Allow player 1 to choose position
  print 'Player 1 enter choice(1 - 9): '
  choice = Integer(gets.chomp)
  player1.player_choice(choice, game_board, 1)
  new_board.display_board(game_board)
  puts

  # Check if Player 1 has won
  winner = Result.game_won?(game_board)
  if winner
    puts "Player 1 (#{winner}) has won!"
    game_won = true
    break
  end

  # Check if the board is full for a draw
  game_drawn = game_board.all? { |pos| pos.is_a?(String) }
  if game_drawn
    puts 'The game is a draw!'
    break
  end

  # Allow player 2 to choose position
  print 'Player 2 enter choice(1 - 9): '
  choice = Integer(gets.chomp)
  player2.player_choice(choice, game_board, 2)
  new_board.display_board(game_board)
  puts

  # Check if Player 2 has won
  winner = Result.game_won?(game_board)
  if winner
    puts "Player 2 (#{winner}) has won!"
    game_won = true
    break
  end

  # Check again for draw after Player 2’s move
  game_drawn = game_board.all? { |pos| pos.is_a?(String) }
  if game_drawn
    puts 'The game is a draw!'
    break
  end
end
