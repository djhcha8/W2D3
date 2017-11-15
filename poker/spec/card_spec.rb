require 'card'

describe Card do
  subject(:card) { Card.new(14, "spade") }
  describe "#initialize" do
    it "should initialize with a value" do
      expect(card.value).to eq(14)
    end

    it "should initialize with a suit" do
      expect(card.suit).to eq("spade")
    end
  end
end
