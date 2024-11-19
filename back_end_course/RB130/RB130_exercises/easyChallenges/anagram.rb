class Anagram
  def initialize(word)
    @word = word
  end

  def match(arr)
    word_hash = @word.downcase.chars.tally
    matching_words = []
    arr.each do |word|
      if word.downcase != @word.downcase 
      matching_words << word if word.downcase.chars.tally == word_hash
      end
    end
    matching_words
  end
end

detector = Anagram.new('Orchestra')
p detector.match %w(cashregister Carthorse radishes)
    