require "./lib/gameboard.rb"

describe "GameBoard" do
  subject(:game) { GameBoard.new }
  
  it "should have a board with 6 rows" do
    expect(game.board).to be_a_kind_of(Array)
  end

  it "should have a board with 7 columns" do
    expect(game.board[0].length).to eq(7)
  end

  it "should have an empty circle for each space" do
    expect(game.board[0][0]).to eq("O")
  end
end