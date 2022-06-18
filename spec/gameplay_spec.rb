require "./lib/gameplay.rb"
require "./lib/player.rb"

describe "Gameplay" do
  
  describe "#player_move_valid?" do
    subject(:game) { Gameplay.new }
    context "when given valid input as argument" do
      it "should return true" do
        expect(game.player_move_valid?(1)).to be_truthy
      end
    end

    context "when given invalid input as argument" do
      it "should return false" do
        expect(game.player_move_valid?(0)).to be_falsey
      end
    end

    describe "#drop_piece" do
      context "when a player drops a piece in a valid column" do
        before do
          column = 5
          player = Player.new("Player 1", "X")
          board = GameBoard.new
          game.drop_piece(column, player)
        end
        
        it "should drop a piece in the correct column" do
          expect(game.gameboard[5][0]).to eq("X")
        end


      end
    end
  end
end