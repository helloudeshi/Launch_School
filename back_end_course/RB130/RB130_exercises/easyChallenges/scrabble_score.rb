class Scrabble
  def initialize(word)
    @word = word
  end

  SCORE = { 'AEIOULNRST' => 1, 'DG' => 2, 'BCMP' => 3, 'FHVWY' => 4, 'K' => 5, 'JX' => 8, 'QZ' => 10 }

  def score
    return 0 if @word.nil?

    score = 0
    @word.chars do |char|
      SCORE.each_key do |ele|
        score += SCORE[ele] if ele.include?(char.upcase)
      end
    end
    score
  end

  def self.score(word)
    new(word).score
  end
end

word1 = Scrabble.new('')
p word1.score
