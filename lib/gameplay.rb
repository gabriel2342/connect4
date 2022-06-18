require_relative "display"
require_relative "gameboard"
require_relative "player"

class Gameplay
  include Display
  
  def initialize
    @gameboard = GameBoard.new
    @player_one = Player.new("Player 1", "X")
    @player_two = Player.new("Player 2", "Y")
    @column = 0
  end

  def game_script
    puts welcome
    display_board(@gameboard.board)
    puts choose_column
    column = gets.chomp.to_i
    player_move_valid?(column)
    drop_piece(column, @player_one)
    display_board(@gameboard.board)
  end

  def drop_piece(col, player)
    @gameboard.board[5][col] = player.color
  end

  def player_move_valid?(column)
    if column.between?(1,7)
      return true
    else
      puts "Invalid move. Please try again."
      return false
    end
  end
end

game = Gameplay.new
game.game_script