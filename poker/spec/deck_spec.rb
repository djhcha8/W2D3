require 'deck'

describe Deck do
  subject(:bicycle) { Deck.new }
  before(:each) do
    bicycle.populate
  end
  let(:spade) do
    bicycle.deck.select do |card|
      card.suit == "spade"
    end
  end
  let(:heart) do
    bicycle.deck.select do |card|
      card.suit == "heart"
    end
  end
  let(:diamond) do
    bicycle.deck.select do |card|
      card.suit == "diamond"
    end
  end
  let(:club) do
    bicycle.deck.select do |card|
      card.suit == "club"
    end
  end

  describe "#initialize" do
    values = (2..14).to_a

    it "should make 52 cards" do
      expect(bicycle.deck.length).to eq(52)
    end

    it "should make 4 different suits with 13 cards" do
      expect(spade.length).to eq(13)
      expect(heart.length).to eq(13)
      expect(diamond.length).to eq(13)
      expect(club.length).to eq(13)

    end

    it "each suit should have range of 2 through 14" do
      expect(spade.map { |card| card.value}).to match_array(values)
      expect(heart.map { |card| card.value}).to match_array(values)
      expect(diamond.map { |card| card.value}).to match_array(values)
      expect(club.map { |card| card.value}).to match_array(values)
    end
  end

  describe "#shuffle" do
    it "should shuffle the deck" do
      shuffled = bicycle.shuffle

      expect(shuffled.deck).not_to eq(bicycle.deck.sort_by {|card| card.value})
    end
  end
end
