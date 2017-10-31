class Deck #how to generate a card pack
  SUITS = ['s','h','d','c']
  VALUES = (2..10).map{&:to_s} + ['J','Q','K','A']

  def initialize
    @stack = generate_stack
  end 

  def generate_stack
    stack = []
    VALUES.each do |value|
      SUITS.each do |suit|
        stack << value + suit
end

class Player
end

class Dealer

end

Deck::VALUES
