
class Card
  
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s 
    "#{rank} of #{suit}"
  end

  def rank_value
    case rank
    when 'Jack' then 11
    when 'Queen' then 12
    when 'King' then 13
    when 'Ace' then 14
    else 
      rank.to_i
    end
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

  end

  def draw # draw one card from deck
   full_deck if @deck_crds.empty?
   @deck_crds.pop
  end

end

class PokerHand
  attr_reader :drawn, :rank_arr

  def initialize(deck)
    @drawn = []
    5.times{drawn << deck.draw}
    @rank_arr = drawn.map{|crd| crd.rank}
  end

  def print
    @drawn.each {|crd| puts crd}
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  private
  
  def royal_flush?
   flush? && rank_arr.all? {|rank| ['10', 'Ace', 'Jack', 'King', 'Queen'].include?(rank.to_s)}
  end

  def straight_flush?
    flush? && straight?
  end

  def four_of_a_kind?
    rank_arr.any? {|rank|rank_arr.count(rank) == 4 }
  end

  def full_house?
    three_of_a_kind? && pair?
  end

  def flush?
    drawn.all?{|card| card.suit == drawn[1].suit}
  end

  def straight?
    value_arr = drawn.map{|crd| crd.rank_value.to_i}.sort
    (0..3).all?{|index| value_arr[index+1] == value_arr[index]+1}
  end

  def three_of_a_kind?
    rank_arr.any? {|rank|rank_arr.count(rank) == 3 }
  end

  def two_pair?
    rank_arr.uniq.size == 3
  end

  def pair?
    rank_arr.any? {|rank|rank_arr.count(rank) == 2 }
  end
end

hand = PokerHand.new(Deck.new)
hand.print
puts hand.evaluate

 
# # Danger danger danger: monkey
# # patching for testing purposes.
class Array
  alias_method :draw, :pop
end

# Test that we can identify each PokerHand type.
hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand.evaluate == 'Royal flush'

hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight flush'


hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'

hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'

hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new('Queen', 'Clubs'),
  Card.new('King',  'Diamonds'),
  Card.new(10,      'Clubs'),
  Card.new('Ace',   'Hearts'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'

hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Two pair'

hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'

hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'
