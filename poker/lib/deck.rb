require 'byebug'
require_relative 'card'

class Deck

VALUES = (2..14).to_a
SUITS = ["spade", "club", "diamond", "heart"]

attr_accessor :deck

  def initialize
    @deck = []
  end

  def populate
    VALUES.each do |v|
      SUITS.each do |s|
        self.deck << Card.new(v, s)
      end
    end
    self.deck
  end

  def shuffle
    self.deck.shuffle!
    self
  end

end
