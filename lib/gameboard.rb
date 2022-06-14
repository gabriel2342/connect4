require_relative "display"

class GameBoard
  include Display

  def initialize
    @gameboard = Array.new(6) { Array.new(7) {empty_circle} }
  end

  def board
    @gameboard
  end
end

