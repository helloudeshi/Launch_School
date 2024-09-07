class Card

  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s 
    "#{rank} of #{suit}"
  end

end

class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize 
    full_deck
  end

  def full_deck #reset deck by generaing 52 cards and shuffle them
    @deck_crds = RANKS.product(SUITS).map {|rank,suit| Card.new(rank,suit)}
    @deck_crds.shuffle!
    # @deck_crds = []
    # SUITS.each do |suit|
    #   RANKS.each do |rank|
    #     @deck_crds << Card.new(rank,suit)
    #   end 
    # end
    # @deck_crds.shuffle!
  end

  def draw # draw one card from deck
   full_deck if @deck_crds.empty?
   @deck_crds.pop
  end

end

deck = Deck.new
drawn = []
52.times { drawn << deck.draw }
puts drawn[1]
puts drawn.count { |card| card.rank == 5 } == 4
puts drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
52.times { drawn2 << deck.draw }
puts drawn != drawn2 # Almost always.