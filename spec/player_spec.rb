require "./lib/player"

describe "Player" do
  context "when initialized with a name and a color" do
    subject(:player) { Player.new("Player 1", "X") }

    it "should have a name" do
      expect(player.name).to eq("Player 1")
    end

    it "should have a color" do
      expect(player.color).to eq("X")
    end
  end
end


