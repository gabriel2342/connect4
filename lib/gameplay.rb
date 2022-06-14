require_relative "display"

class Gameplay
  include Display

  def game_script
    puts welcome
    puts choose_column
    move = gets.chomp.to_i
    player_move(move)
  end

  def player_move(move)
    if move.between?(1,7)
      return true
    else
      puts "Invalid move. Please try again."
      return false
    end
  end
end

game = Gameplay.new
game.game_script