class Card
  attr_reader :value, :suit

  FACE_CARDS = {
    J: 11,
    Q: 12,
    K: 13,
    A: 14
  }

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

end
