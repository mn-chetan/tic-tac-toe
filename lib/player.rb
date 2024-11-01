# Player class to update game_board based on user choice
class Player
  def player_choice(choice, game_board, player)
    game_board[choice - 1] = if player == 1
                               'X'
                             else
                               'O'
                             end
  end
end
