module Display
  
  def empty_circle
    "O"
  end

  def display_board(board)
    board.each do |row|
      puts row.join(" ")
    end
  end

  def welcome
    "Welcome to Connect Four!"
  end

  def choose_column
    "Where would you like to place your piece? (1-7)?"
  end

end