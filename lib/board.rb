# Board class displays game_board and updates game_board
class Board
  # Function to display board on console
  # Takes a array game_board as an argument
  def display_board(game_board)
    (0..game_board.length - 1).each do |i|
      # For index 3 and 6, wrap display to next line
      if [3, 6].include?(i)
        puts
        puts '-----------'
      end
      print "#{game_board[i]} | "
    end
    puts
  end
end
