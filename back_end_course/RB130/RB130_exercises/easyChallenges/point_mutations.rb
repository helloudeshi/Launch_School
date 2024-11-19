class DNA
  def initialize(str) 
    @dna = str
  end

  def hamming_distance(str)
    counter = 0
    (0...str.size).each do |ind|
      counter += 1 if str[ind] != @dna[ind]
    end
    counter 
  end
end

dna = DNA.new('GAGCCTACTAACGGGAT')
p dna.hamming_distance('CATCGTAATGACGGCCT') 

