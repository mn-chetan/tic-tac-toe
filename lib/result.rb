class Result
  def self.game_won?(game_board)
    # Winning combinations
    winning_combinations = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8], # Horizontal
      [0, 3, 6], [1, 4, 7], [2, 5, 8], # Vertical
      [0, 4, 8], [2, 4, 6]             # Diagonal
    ]

    # Check each winning combination
    winning_combinations.each do |combo|
      if game_board[combo[0]] == game_board[combo[1]] && game_board[combo[1]] == game_board[combo[2]]
        return game_board[combo[0]] # Return 'X' or 'O' for the winner
      end
    end
    nil # Return nil if there’s no winner
  end
end
